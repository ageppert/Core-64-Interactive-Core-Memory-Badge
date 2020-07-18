#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "HardwareIOMap.H"
#include "HardwareIOMap.h"

static uint16_t BatterymV = 0 ;
  // TO DO: Is the analog reference really 3.3V, set in Teensy?
  // ADC reading is 1/2 of the battery voltage, scaled relative to 3.3V Analog Reference
  // 3300 mV per 1023 counts = 3.226 [half battery] milliVolts/count
  // Multiply above result by 2 = 6.458 [full battery] milliVolts/count
  // ADC reading * 6.458 = battery voltage in milliVolts
static float BatteryScalarADCtomV = 6.458;

uint16_t GetBatteryVoltagemV() {
  return (BatterymV);
}

void ReadAnalogVoltage() {

  static unsigned long BatteryHalfADC = 0 ;
  if (HardwareVersionMinor == 2)
  {
    BatteryScalarADCtomV = 6.366 ; // adjusted during V0.2 Battery Reading Calibration.xlsx work Mar 09, 2020
    BatteryHalfADC = analogRead(Pin_v020_Battery_Voltage);
  }
  else if (HardwareVersionMinor == 3)
  {
    BatteryScalarADCtomV = 6.366 ; // Seems good enough
    BatteryHalfADC = analogRead(Pin_v030_Battery_Voltage);
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
