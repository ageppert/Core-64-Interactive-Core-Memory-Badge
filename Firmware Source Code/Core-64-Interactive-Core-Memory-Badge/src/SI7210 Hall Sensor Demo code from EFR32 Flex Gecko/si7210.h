/***************************************************************************/
#ifndef __SI7210_H_
#define __SI7210_H_

#include <stdint.h>
#include <stdbool.h>

#include "si7210_config.h"
#include "thunderboard/si7210_regs.h"

/***************************************************************************/
/***************************************************************************/
#ifndef SI7210_CONFIG_I2C_DEVICE
  #define SI7210_CONFIG_I2C_DEVICE (I2C0)             
#endif

#ifndef SI7210_CONFIG_I2C_BUS_ADDRESS
  #define SI7210_CONFIG_I2C_BUS_ADDRESS (0x30)        
#endif

#ifndef SI7210_CONFIG_DEVICE_ID
  #define SI7210_CONFIG_DEVICE_ID        0x11         
#endif

#ifndef SI7210_CONFIG_GPIO_PORT_OUT1
  #define SI7210_CONFIG_GPIO_PORT_OUT1   gpioPortB    
#endif

#ifndef SI7210_CONFIG_GPIO_PIN_OUT1
  #define SI7210_CONFIG_GPIO_PIN_OUT1    11           
#endif


#define SI7210_I2C_DEVICE                    ( SI7210_CONFIG_I2C_DEVICE )        
#define SI7210_I2C_DEVICE_BUS_ADDRESS        ( SI7210_CONFIG_I2C_BUS_ADDRESS )   
#define SI7210_I2C_DEVICE_BUS_TIMEOUT        ( SI7210_CONFIG_I2C_BUS_TIMEOUT )   
#define SI7210_GPIO_PORT_OUT1                ( SI7210_CONFIG_GPIO_PORT_OUT1 )    
#define SI7210_GPIO_PIN_OUT1                 ( SI7210_CONFIG_GPIO_PIN_OUT1 )     
#define SI7210_DEVICE_ID                     ( SI7210_CONFIG_DEVICE_ID )         
/***************************************************************************/
#define SI7210_OK                            0        
#define SI7210_ERROR_I2C_TRANSFER_FAILED     0x0001   
#define SI7210_ERROR_INVALID_DEVICE_ID       0x0002   
#define SI7210_ERROR_CONFIG_INVALID_MODE     0x0003   
#define SI7210_ERROR_OTP_BUSY                0x0004   
#define SI7210_ERROR_READ_TIMEOUT            0x0005   
/***************************************************************************/
#define SI7210_CONFIG_MODE_THRESHOLD         0x01     
#define SI7210_CONFIG_MODE_MEASURE           0x02     
#define SI7210_CONFIG_SCALE_20mT             0x00     
#define SI7210_CONFIG_SCALE_200mT            0x01     
#define SI7210_CONFIG_POLARITY_OMNI          0x00     
#define SI7210_CONFIG_POLARITY_NEG           0x01     
#define SI7210_CONFIG_POLARITY_POS           0x02     
#define SI7210_CONFIG_THRESHOLD_MIN          0.08f    
#define SI7210_CONFIG_THRESHOLD_MAX          19.2f    
/***************************************************************************/
typedef void * SI7210_Config;                         
typedef void (*SI7210_IntCallback)(uint8_t level);    
/***************************************************************************/
typedef struct __SI7210_ConfigMeasure {

   uint8_t  mode;            
   uint8_t  scale;           
   uint32_t samplePeriod;    
} SI7210_ConfigMeasure;

/***************************************************************************/
typedef struct __SI7210_ConfigThreshold {

   uint8_t            mode;           
   SI7210_IntCallback callback;       
   float              threshold;      
   float              hysteresis;     
   uint8_t            polarity;       
   bool               outputInvert;   
} SI7210_ConfigThreshold;

/***************************************************************************/
uint32_t SI7210_init         ( void );
void     SI7210_deInit       ( void );
uint32_t SI7210_config       ( SI7210_Config config );
uint32_t SI7210_measure      ( float *result );
uint32_t SI7210_suspend      ( void );

uint32_t SI7210_regRead      ( uint8_t addr, uint8_t *data );
uint32_t SI7210_regWrite     ( uint8_t addr, uint8_t data );
uint32_t SI7210_regSetBits   ( uint8_t addr, uint8_t mask );
uint32_t SI7210_regClearBits ( uint8_t addr, uint8_t mask );
uint32_t SI7210_regReadOTP   ( uint8_t otpAddr, uint8_t *otpData );

#endif /* __SI7210_H_ */
