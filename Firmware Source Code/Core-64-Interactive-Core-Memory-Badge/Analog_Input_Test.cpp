#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "HardwareIOMap.H"

static uint16_t BatterymV = 0 ;

uint16_t GetBatteryVoltagemV() {
  return (BatterymV);
}

void ReadAnalogVoltage() {
  // ADC reading is 1/2 of the battery voltage, scaled relative to 3.3V Analog Reference
  // 3300 mV per 1023 counts = 3.226 [half battery] milliVolts/count
  // Multiply above result by 2 = 6.458 [full battery] milliVolts/count
  // ADC reading * 6.458 = battery voltage in milliVolts
  static unsigned long BatteryHalfADC = 0 ;
  // static float BatteryScalarADCtomV = 6.65 ; // adjusted to match reading from multimeter
  static float BatteryScalarADCtomV = 6.366 ; // adjusted during V0.2 Battery Reading Calibration.xlsx work Mar 09, 2020
  BatteryHalfADC = analogRead(Pin_Battery_Voltage);
  BatterymV = (uint16_t)(BatteryHalfADC * BatteryScalarADCtomV);
}

void AnalogSetup() {
  ReadAnalogVoltage();
}

void AnalogUpdate() {
  static unsigned long ReadPeriodms = 5000;
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
