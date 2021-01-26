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

static uint16_t BatterymV = 0 ;
  // TO DO: Is the analog reference really 3.3V, set in Teensy?
  // ADC reading is 1/4 of the battery voltage, scaled relative to 3.3V Analog Reference
  // 3300 mV per 1023 counts = 3.226 milliVolts/count [1/4 battery voltage]
  // Multiply above result by 4 = 12.904 milliVolts/count [full battery voltage] 
  // ADC reading * 12.904 = battery voltage in milliVolts
static float BatteryScalarADCtomV = 12.903;
static uint16_t Analog_A10 = 0 ;

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
  return (BatterymV);
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
  BatterymV     = (uint16_t)(Analog_A10 * BatteryScalarADCtomV);
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
      Serial.print(Core_Col0_Q5,3);
      Serial.print(", ");
      Serial.print(Core_Col0_R9,3);
      Serial.print(", ");
      Serial.print(Core_Col0_U7,3);
      Serial.print(", ");
      Serial.print(Core_Col0_Q2,3);
      Serial.print(", ");
      Serial.print(Core_Col0_Q21,3);
      Serial.println();
    #endif
  }
}
