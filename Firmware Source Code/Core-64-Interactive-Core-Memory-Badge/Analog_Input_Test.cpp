#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "Analog_Input_Test.h"
#include "HardwareIOMap.h"

#define SEND_ANALOG_TO_SERIAL_PORT
#define BATTERY_FILTER_SIZE  8 // 
#define BATTERY_FILTER_SHIFT 3 // bit shift 3 is divide by 8

static uint16_t BatteryQuarterAvgmV = 0 ;
static uint16_t BatteryAvgmV = 0 ;
static float    BatteryQuarterAvgV  = 0 ;
static float    BatteryAvgV  = 0 ;
  // TO DO: Is the analog reference really 3.3V, set in Teensy?
  // ADC reading is 1/4 of the battery voltage, scaled relative to 3.3V Analog Reference
  // 3300 mV per 1023 counts = 3.226 milliVolts/count [1/4 battery voltage]
  // Multiply above result by 4 = 12.904 milliVolts/count [full battery voltage] 
  // ADC reading * 12.904 = battery voltage in milliVolts
static float BatteryScalarADCtomV = 12.903;
static uint16_t Analog_A10 = 0 ;
static uint16_t BatteryVoltageFilterArray[BATTERY_FILTER_SIZE];
static uint16_t BatteryVoltageFilterArrayTotal;
static uint8_t BatteryVoltageFilterArrayPosition = 0;
static bool BatteryVoltageFilterLoaded = 0;

static float Core_Col0_Q5  = 0 ;
static float Core_Col0_R9  = 0 ;
static float Core_Col0_U7  = 0 ;
static float Core_Col0_Q2  = 0 ;
static float Core_Col0_Q21 = 0 ;

static uint16_t Analog_A1  = 0 ;
static uint16_t Analog_A11 = 0 ;
static uint16_t Analog_A12 = 0 ;
static uint16_t Analog_A13 = 0 ;
static uint16_t Analog_A14 = 0 ;
static float Core_Col0_ADCtomV = 3.226;

uint16_t GetBatteryVoltagemV() {
  return (BatteryAvgmV);
}

float GetBatteryVoltageV() {
  return (BatteryAvgV);
}

void ReadAnalogVoltage() {

  if (HardwareVersionMinor == 4)
  {
    Analog_A10 = analogRead ( Pin_Battery_Voltage   );  //  
    Analog_A1  = analogRead ( Pin_SPI_Reset_Spare_5 );  //  Q5 / 3V3  (Red)
    Analog_A11 = analogRead ( Pin_SPARE_ANA_6       );  //  R9        (Yel)
    Analog_A12 = analogRead ( Pin_SPARE_ANA_7       );  //  U7        (Grn)
    Analog_A13 = analogRead ( Pin_SPARE_ANA_8       );  //  Q2        (Blu)
    Analog_A14 = analogRead ( Pin_Spare_ADC_DAC     );  //  Q21       (Wht)
  }
  
  if(!BatteryVoltageFilterLoaded)
  {
    for(uint8_t i = 0; i < BATTERY_FILTER_SIZE; i++)
    {
      BatteryVoltageFilterArray[i] = Analog_A10;
    }
    BatteryVoltageFilterLoaded = 1;
  }
  
  if(BatteryVoltageFilterArrayPosition > (BATTERY_FILTER_SIZE-1) )
  {
    BatteryVoltageFilterArrayPosition = 0;
  }
  else
  {
    BatteryVoltageFilterArrayPosition++;
  }

  BatteryVoltageFilterArray[BatteryVoltageFilterArrayPosition] = Analog_A10;

  BatteryVoltageFilterArrayTotal = 0;
  for(uint8_t i = 0; i < BATTERY_FILTER_SIZE; i++)
  {
    BatteryVoltageFilterArrayTotal = BatteryVoltageFilterArrayTotal + BatteryVoltageFilterArray[i];
  }
  BatteryQuarterAvgmV = BatteryVoltageFilterArrayTotal >> BATTERY_FILTER_SHIFT;
  BatteryAvgmV        = (uint16_t)(BatteryQuarterAvgmV * BatteryScalarADCtomV);
  BatteryAvgV         = (float)(BatteryAvgmV / 1000.0) ;

  Core_Col0_Q5  = Analog_A1  * Core_Col0_ADCtomV / 1000.0 ;
  Core_Col0_R9  = Analog_A11 * Core_Col0_ADCtomV / 1000.0 ;
  Core_Col0_U7  = Analog_A12 * Core_Col0_ADCtomV / 1000.0 ;
  Core_Col0_Q2  = Analog_A13 * Core_Col0_ADCtomV / 1000.0 ;
  Core_Col0_Q21 = Analog_A14 * Core_Col0_ADCtomV / 1000.0 ;

}

void AnalogSetup() {
  // Nothing to do here because Teensy does not require explicit set-up for analog-only pins
}

void AnalogUpdate() {
  static unsigned long ReadPeriodms = 100;
  static unsigned long NowTime = 0;
  static unsigned long AnalogReadTimer = 0;
  
  NowTime = millis();
  if ((NowTime - AnalogReadTimer) >= ReadPeriodms)
  {
    AnalogReadTimer = NowTime;
    ReadAnalogVoltage();
    /*
    Serial.print("Battery ");
    Serial.print(GetBatteryVoltagemV());
    Serial.println(" mV.");
    */
    #ifdef SEND_ANALOG_TO_SERIAL_PORT
      Serial.print((BatteryAvgV),2);
      Serial.print(", ");
      Serial.print(Core_Col0_Q5,2);
      Serial.print(", ");
      Serial.print(Core_Col0_R9,2);
      Serial.print(", ");
      Serial.print(Core_Col0_U7,2);
      Serial.print(", ");
      Serial.print(Core_Col0_Q2,2);
      Serial.print(", ");
      Serial.print(Core_Col0_Q21,2);
      Serial.println();
    #endif
  }
}
