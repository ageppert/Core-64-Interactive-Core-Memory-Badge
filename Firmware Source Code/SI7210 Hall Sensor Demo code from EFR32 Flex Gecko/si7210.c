/***************************************************************************/
#include <stddef.h>
#include "i2cspm.h"
#include "gpiointerrupt.h"
#include "em_cmu.h"

#include "thunderboard/board.h"
#include "thunderboard/util.h"
#include "thunderboard/si7210.h"

/***************************************************************************/
/***************************************************************************/
static SI7210_IntCallback callback;        
static bool               outputInvert;    
static float              scale;           
/***************************************************************************/
static uint32_t wakeDevice        ( void );
static uint8_t  calculateSWOP     ( float threshold );
static uint8_t  calculateSWHYST   ( float hysteresis );
static uint8_t  calculateSlTime   ( uint32_t samplePeriod, uint8_t *slFast );
static uint32_t loadCoeffsFromOtp ( uint8_t otpAddr );
static void     gpioIntCallback   ( uint8_t pin );
static void     usDelay           ( uint32_t delay );

/***************************************************************************/
static void usDelay( uint32_t delay )
{

   volatile uint32_t cnt;

   cnt = CMU_ClockFreqGet( cmuClock_HF ) * delay / (uint32_t) 1e6;
   cnt /= 7; /* 7 cycles per loop count */

   while( cnt-- )
      ;

   return;

}

/***************************************************************************/
uint32_t SI7210_init( void )
{

   uint32_t status;
   uint8_t deviceId;

   GPIOINT_Init();

   /* Enable power to the sensor */
   BOARD_envSensEnable( true );

   /* Allow some time for the part to power up */
   UTIL_delay( 2 );

   /* Enable pull-up on OUT1 line */
   GPIO_PinModeSet( SI7210_GPIO_PORT_OUT1, SI7210_GPIO_PIN_OUT1, gpioModeInput, 0 );

   /* Try to contact the sensor and check it's device ID */
   status = wakeDevice();
   if( status != SI7210_OK ) {
      return status;
   }

   status = SI7210_regRead( SI7210_REG_ADDR_HREVID, &deviceId );
   if( status != SI7210_OK ) {
      /* For some reason, this transfer is NACKed even though the read succeed... */
      /* return status; */
   }

   if( deviceId != SI7210_DEVICE_ID ) {
      status = SI7210_ERROR_INVALID_DEVICE_ID;
   }

   scale = 0.0f;
   callback = NULL;

   return status;

}

/***************************************************************************/
void SI7210_deInit( void )
{

   /* Disable pull-up on OUT1 line */
   GPIOINT_CallbackUnRegister( SI7210_GPIO_PIN_OUT1 );
   GPIO_IntConfig( SI7210_GPIO_PORT_OUT1, SI7210_GPIO_PIN_OUT1, false, false, false );
   GPIO_PinModeSet( SI7210_GPIO_PORT_OUT1, SI7210_GPIO_PIN_OUT1, gpioModeDisabled, 0 );

   /* Disable sensor power */
   BOARD_envSensEnable( false );

}

/***************************************************************************/
uint32_t SI7210_suspend( void )
{

   uint32_t status;
   SI7210_ConfigThreshold config;

   status = SI7210_regSetBits( SI7210_REG_ADDR_POWER_CTRL,
         SI7210_REG_POWER_CTRL_SLEEP_MASK );

   config.mode         = SI7210_CONFIG_MODE_THRESHOLD;
   config.callback     = NULL;
   config.threshold    = 200;
   config.hysteresis   = 2;
   config.polarity     = SI7210_CONFIG_POLARITY_OMNI;
   config.outputInvert = true;

   SI7210_config( &config );

   return status;

}

/***************************************************************************/
uint32_t SI7210_config( SI7210_Config config )
{

   uint32_t status;
   uint8_t *mode;
   uint8_t value;
   uint8_t sw_op, sw_hyst;
   uint8_t slFast, slTime;

   SI7210_ConfigThreshold *cfgThres;
   SI7210_ConfigMeasure *cfgMeas;

   mode = (uint8_t *) config;

   if( ( *mode != SI7210_CONFIG_MODE_THRESHOLD ) && ( *mode != SI7210_CONFIG_MODE_MEASURE ) ) {
      return SI7210_ERROR_CONFIG_INVALID_MODE;
   }

   /* Wake up device and/or stop measurements */
   status = wakeDevice();
   if( status != SI7210_OK )
      return status;

   status = SI7210_regSetBits( SI7210_REG_ADDR_POWER_CTRL,
         SI7210_REG_POWER_CTRL_STOP_MASK );

   if( status != SI7210_OK )
      return status;

   if( *mode == SI7210_CONFIG_MODE_THRESHOLD ) {

      cfgThres = (SI7210_ConfigThreshold *) config;

      if( ( cfgThres->threshold == 0.0 ) &&
            ( cfgThres->hysteresis == 0.0 ) &&
            ( cfgThres->polarity == 0 ) &&
            ( cfgThres->outputInvert == 0 ) ) {

         /* Use default values in the device for all parameters */
         status = SI7210_regClearBits( SI7210_REG_ADDR_POWER_CTRL,
               SI7210_REG_POWER_CTRL_USESTORE_MASK );

         if( status != SI7210_OK )
            return status;
      }
      else {

         /* Program sw_low4field and sw_op bit fields */
         sw_op = calculateSWOP( cfgThres->threshold );

         value = ( cfgThres->outputInvert << SI7210_REG_CTRL1_SW_LOW4FIELD_SHIFT )
               & SI7210_REG_CTRL1_SW_LOW4FIELD_MASK;

         value |= ( sw_op << SI7210_REG_CTRL1_SW_OP_SHIFT )
               & SI7210_REG_CTRL1_SW_OP_MASK;

         status = SI7210_regWrite( SI7210_REG_ADDR_CTRL1, value );
         if( status != SI7210_OK )
            return status;

         /* Program sw_fieldpolsel and sw_hyst bit fields */
         sw_hyst = calculateSWHYST( cfgThres->hysteresis );

         value = ( cfgThres->polarity << SI7210_REG_CTRL2_SW_FIELDPOLSEL_SHIFT )
               & SI7210_REG_CTRL2_SW_FIELDPOLSEL_MASK;

         value |= ( sw_hyst << SI7210_REG_CTRL2_SW_HYST_SHIFT )
               & SI7210_REG_CTRL2_SW_HYST_MASK;

         status = SI7210_regWrite( SI7210_REG_ADDR_CTRL2, value );
         if( status != SI7210_OK )
            return status;

         /* Enable storing of these parameters in sleep mode */
         status = SI7210_regSetBits( SI7210_REG_ADDR_POWER_CTRL,
               SI7210_REG_POWER_CTRL_USESTORE_MASK );

         if( status != SI7210_OK )
            return status;
      }

      /* Enable sleep timer and clear stop bit to start operation */
      status = SI7210_regSetBits( SI7210_REG_ADDR_CTRL3,
            SI7210_REG_CTRL3_SLTIMEENA_MASK );

      if( status != SI7210_OK )
         return status;

      status = SI7210_regClearBits( SI7210_REG_ADDR_POWER_CTRL,
            SI7210_REG_POWER_CTRL_STOP_MASK );

      if( status != SI7210_OK )
         return status;

      /* Register gpio interrupt with driver */
      outputInvert = cfgThres->outputInvert;
      callback = cfgThres->callback;
      GPIO_IntConfig( SI7210_GPIO_PORT_OUT1, SI7210_GPIO_PIN_OUT1, true, true, true );
      GPIOINT_CallbackRegister( SI7210_GPIO_PIN_OUT1, gpioIntCallback );
   }
   else {

      cfgMeas = (SI7210_ConfigMeasure *) config;
      if( cfgMeas->scale == SI7210_CONFIG_SCALE_200mT ) {

         /* Load coefficients from OTP memory for 200 mT range */
         status = loadCoeffsFromOtp( SI7210_OTP_ADDR_COEFFS_200MT );
         if( status != SI7210_OK )
            return status;

         scale = 204.7f;
      }
      else {
         scale = 20.47f;
      }

      /* Calculate Sltime and Slfast registers */
      slTime = calculateSlTime( cfgMeas->samplePeriod, &slFast );

      if( slFast ) {
         status = SI7210_regSetBits( SI7210_REG_ADDR_CTRL3,
               SI7210_REG_CTRL3_SLFAST_MASK );

         if( status != SI7210_OK )
            return status;
      }
      else {
         status = SI7210_regClearBits( SI7210_REG_ADDR_CTRL3,
               SI7210_REG_CTRL3_SLFAST_MASK );

         if( status != SI7210_OK )
            return status;
      }

      status = SI7210_regWrite( SI7210_REG_ADDR_SLTIME, slTime );
      if( status != SI7210_OK )
         return status;

      /* Disable sleep timer and clear stop bit to start operation */
      status = SI7210_regClearBits( SI7210_REG_ADDR_CTRL3,
            SI7210_REG_CTRL3_SLTIMEENA_MASK );

      if( status != SI7210_OK )
         return status;

      status = SI7210_regClearBits( SI7210_REG_ADDR_POWER_CTRL,
            SI7210_REG_POWER_CTRL_STOP_MASK );

      if( status != SI7210_OK )
         return status;

      /* Write correct value into dspsigsel */
      status = SI7210_regWrite( SI7210_REG_ADDR_DSPSIGSEL, 0x04 );
      if( status != SI7210_OK )
         return status;

   }

   return status;

}

/***************************************************************************/
uint32_t SI7210_measure( float *result )
{

   uint32_t timeout;
   uint32_t status;
   uint8_t data;
   int32_t field;
   uint8_t flag;

   flag = 0;

   timeout = 1000;
   while( ( flag == 0 ) && timeout-- ) {

      status = SI7210_regRead( SI7210_REG_ADDR_DSPSIGM, &data );
      if( status != SI7210_OK )
         return status;

      flag = data >> 7;
   }

   if( timeout == 0 ) {
      return SI7210_ERROR_READ_TIMEOUT;
   }

   field = ( ( (uint16_t) data ) & 0x7F ) << 8;

   status = SI7210_regRead( SI7210_REG_ADDR_DSPSIGL, &data );
   field |= data;
   field -= 16384;
   *result = ( (float) field ) * scale / 16384;

   return status;

}

/***************************************************************************/
uint32_t SI7210_regRead( uint8_t addr, uint8_t *data )
{

   I2C_TransferSeq_TypeDef seq;
   I2C_TransferReturn_TypeDef ret;

   seq.addr = SI7210_I2C_DEVICE_BUS_ADDRESS << 1;
   seq.flags = I2C_FLAG_WRITE_READ;

   seq.buf[0].len = 1;
   seq.buf[1].len = 1;
   seq.buf[0].data = &addr;
   seq.buf[1].data = data;

   ret = I2CSPM_Transfer( SI7210_I2C_DEVICE, &seq );
   if( ret != i2cTransferDone ) {
      return SI7210_ERROR_I2C_TRANSFER_FAILED;
   }

   return SI7210_OK;

}

/***************************************************************************/
uint32_t SI7210_regWrite( uint8_t addr, uint8_t data )
{

   I2C_TransferSeq_TypeDef seq;
   I2C_TransferReturn_TypeDef ret;

   seq.addr = SI7210_I2C_DEVICE_BUS_ADDRESS << 1;
   seq.flags = I2C_FLAG_WRITE_WRITE;

   seq.buf[0].len = 1;
   seq.buf[1].len = 1;
   seq.buf[0].data = &addr;
   seq.buf[1].data = &data;

   ret = I2CSPM_Transfer( SI7210_I2C_DEVICE, &seq );
   if( ret != i2cTransferDone ) {
      return SI7210_ERROR_I2C_TRANSFER_FAILED;
   }

   return SI7210_OK;

}

/***************************************************************************/
uint32_t SI7210_regSetBits( uint8_t addr, uint8_t mask )
{

   uint8_t value;
   uint32_t status;

   status = SI7210_regRead( addr, &value );
   if( status != SI7210_OK ) {
      return status;
   }

   value |= mask;

   status = SI7210_regWrite( addr, value );

   return status;

}

/***************************************************************************/
uint32_t SI7210_regClearBits( uint8_t addr, uint8_t mask )
{

   uint8_t value;
   uint32_t status;

   status = SI7210_regRead( addr, &value );
   if( status != SI7210_OK ) {
      return status;
   }

   value &= ~mask;

   status = SI7210_regWrite( addr, value );

   return status;

}

/***************************************************************************/
static uint32_t wakeDevice( void )
{

   I2C_TransferSeq_TypeDef seq;
   I2C_TransferReturn_TypeDef ret;

   seq.addr = SI7210_I2C_DEVICE_BUS_ADDRESS << 1;
   seq.flags = I2C_FLAG_WRITE;

   seq.buf[0].len = 0;
   seq.buf[0].data = NULL;

   ret = I2CSPM_Transfer( SI7210_I2C_DEVICE, &seq );
   if( ret != i2cTransferDone ) {
      return SI7210_ERROR_I2C_TRANSFER_FAILED;
   }

   usDelay( 10 );

   return SI7210_OK;

}

/***************************************************************************/
static uint8_t calculateSWOP( float threshold )
{

   int th;
   uint8_t a;
   uint8_t swop;

   th = (int) ( threshold / 0.005 );

   if( th == 0 ) {
      /* threshold = 0, when swop = 127 */
      return 127;
   }
   else if( th < 16 ) {
      threshold = 16;
   }
   else if( threshold > 3840 ) {
      threshold = 3840;
   }

   a = th / 16;
   swop = 0;
   while( a != 0x01 ) {
      a = a >> 1; /* Find the most significant 1 of th */
      swop += 0x10; /* increment sw_op[6:4] */
   }

   /* Add remainder as sw_op[3:0] */
   swop |= th / ( 1 << ( swop >> 4 ) ) - 16;

   return swop;

}

/***************************************************************************/
static uint8_t calculateSWHYST( float hysteresis )
{

   int hyst;
   uint8_t a;
   uint8_t swhyst;

   hyst = (int) ( hysteresis / 0.005 );

   if( hyst == 0 ) {
      /* When sw_op = 63 the hysteresis is set to zero */
      return 63;
   }
   else if( hyst < 8 ) {
      hyst = 8;
   }
   else if( hyst > 1792 ) {
      hyst = 1792;
   }

   a = hyst / 8;
   swhyst = 0;

   while( a != 0x01 ) {
      a = a >> 1;
      swhyst += 0x08;
   }

   swhyst |= hyst / ( 1 << ( swhyst >> 3 ) ) - 8;

   return swhyst;

}

/***************************************************************************/
static uint8_t calculateSlTime( uint32_t samplePeriod, uint8_t *slFast )
{

   int a;
   uint8_t slTime;

   if( samplePeriod == 0 ) {
      *slFast = 1;
      slTime = 0;
      return slTime;
   }

   /* Impose limits */
   if( samplePeriod < 11 ) {
      samplePeriod = 11;
   }
   else if( samplePeriod > 172000 ) {
      samplePeriod = 172000;
   }

   /* Decide on wether we need slFast or not */
   if( samplePeriod < 750 ) {
      *slFast = 1;
      a = samplePeriod * 12 / 32 / 4;
   }
   else {
      *slFast = 0;
      a = samplePeriod * 12 / 32 / 256;
   }

   slTime = 0;
   while( a != 0x01 ) {
      a = a >> 1;
      slTime += 0x20;
   }

   if( *slFast ) {
      slTime |= samplePeriod * 12 / ( 4 << ( slTime >> 5 ) ) - 32;
   }
   else {
      slTime |= samplePeriod * 12 / ( 256 << ( slTime >> 5 ) ) - 32;
   }

   return slTime;

}

/***************************************************************************/
static uint32_t SI7210_regReadOTP( uint8_t otpAddr, uint8_t *otpData )
{

   uint32_t status;
   uint8_t reg;

   status = SI7210_regRead( SI7210_REG_ADDR_OTP_CTRL, &reg );
   if( status != SI7210_OK )
      return status;

   if( reg & SI7210_REG_OTP_CTRL_BUSY_MASK ) {
      return SI7210_ERROR_OTP_BUSY;
   }

   status = SI7210_regWrite( SI7210_REG_ADDR_OTP_DATA, otpAddr );
   if( status != SI7210_OK )
      return status;

   status = SI7210_regWrite( SI7210_REG_ADDR_OTP_CTRL, SI7210_REG_OTP_CTRL_READ_EN_MASK );
   if( status != SI7210_OK )
      return status;

   status = SI7210_regRead( SI7210_REG_ADDR_OTP_DATA, otpData );

   return status;

}

/***************************************************************************/
static uint32_t loadCoeffsFromOtp( uint8_t otpAddr )
{

   int i;
   uint32_t status;
   uint8_t value;

   const uint8_t writeAddr[] = {

         SI7210_REG_ADDR_A0,
         SI7210_REG_ADDR_A1,
         SI7210_REG_ADDR_A2,
         SI7210_REG_ADDR_A3,
         SI7210_REG_ADDR_A4,
         SI7210_REG_ADDR_A5
   };

   for( i = 0; i < sizeof( writeAddr ); i++ ) {

      status = SI7210_regReadOTP( otpAddr++, &value );

      if( status != SI7210_OK ) {
         return status;
      }

      status = SI7210_regWrite( writeAddr[i], value );

      if( status != SI7210_OK ) {
         return status;
      }
   }

   return status;

}

/***************************************************************************/
static void gpioIntCallback( uint8_t pin )
{

   uint8_t fieldLevel;

   if( GPIO_PinInGet( SI7210_GPIO_PORT_OUT1, SI7210_GPIO_PIN_OUT1 ) && !outputInvert ) {
      fieldLevel = 1;
   }
   else {
      fieldLevel = 0;
   }

   if( callback != NULL ) {
      callback( fieldLevel );
   }

   return;

}

