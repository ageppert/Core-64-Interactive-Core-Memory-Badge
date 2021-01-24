#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "Analog_Input_Test.h"
#include "HardwareIOMap.h"

// #define SEND_ANALOG_TO_SERIAL_PORT

static uint16_t BatterymV = 0 ;
  // TO DO: Is the analog reference really 3.3V, set in Teensy?
  // ADC reading is 1/4 of the battery voltage, scaled relative to 3.3V Analog Reference
  // 3300 mV per 1023 counts = 3.226 milliVolts/count [1/4 battery voltage]
  // Multiply above result by 4 = 12.904 milliVolts/count [full battery voltage] 
  // ADC reading * 12.904 = battery voltage in milliVolts
static float BatteryScalarADCtomV = 12.903;

static uint16_t Analog_A10 = 0 ;
static uint16_t Analog_A11 = 0 ;
static uint16_t Analog_A12 = 0 ;
static uint16_t Analog_A13 = 0 ;
static uint16_t Analog_A14 = 0 ;

uint16_t GetBatteryVoltagemV() {
  return (BatterymV);
}

void ReadAnalogVoltage() {

  if (HardwareVersionMinor == 4)
  {
    Analog_A10 = analogRead(Pin_Battery_Voltage);
  }
  BatterymV = (uint16_t)(Analog_A10 * BatteryScalarADCtomV);

  Analog_A11 = analogRead( Pin_SPARE_ANA_6   );
  Analog_A12 = analogRead( Pin_SPARE_ANA_7   );
  Analog_A13 = analogRead( Pin_SPARE_ANA_8   );
  Analog_A14 = analogRead( Pin_Spare_ADC_DAC );

}

void AnalogSetup() {
  // Nothing to do here because Teensy does not require explicit set-up for analog-only pins
}

void AnalogUpdate() {
  static unsigned long ReadPeriodms = 333;
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
      Serial.print(Analog_A10);
      Serial.print(" ");
      Serial.print(Analog_A11);
      Serial.print(" ");
      Serial.print(Analog_A12);
      Serial.print(" ");
      Serial.print(Analog_A13);
      Serial.print(" ");
      Serial.print(Analog_A14);
      Serial.println();
    #endif
  }
}
