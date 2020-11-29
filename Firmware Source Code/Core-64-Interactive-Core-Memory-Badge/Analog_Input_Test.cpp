#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "Analog_Input_Test.h"
#include "HardwareIOMap.h"

static uint16_t BatterymV = 0 ;
  // TO DO: Is the analog reference really 3.3V, set in Teensy?
  // ADC reading is 1/4 of the battery voltage, scaled relative to 3.3V Analog Reference
  // 3300 mV per 1023 counts = 3.226 milliVolts/count [1/4 battery voltage]
  // Multiply above result by 4 = 12.904 milliVolts/count [full battery voltage] 
  // ADC reading * 12.904 = battery voltage in milliVolts
static float BatteryScalarADCtomV = 12.903;

uint16_t GetBatteryVoltagemV() {
  return (BatterymV);
}

void ReadAnalogVoltage() {

  static unsigned long BatteryHalfADC = 0 ;
  if (HardwareVersionMinor == 4)
  {
    BatteryHalfADC = analogRead(Pin_Battery_Voltage);
  }
  BatterymV = (uint16_t)(BatteryHalfADC * BatteryScalarADCtomV);
}

void AnalogSetup() {
  // nothing to do here
}

void AnalogUpdate() {
  static unsigned long ReadPeriodms = 1000;
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
  }
}
