#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "HardwareIOMap.H"

void AnalogSetup() {
  // Nothing required?
}

void AnalogUpdate() {

  // ADC reading is 1/2 of the battery voltage, scaled relative to 3.3V Analog Reference
  // 3300 mV per 1023 counts = 3.226 [half battery] milliVolts/count
  // Multiply above result by 2 = 6.458 [full battery] milliVolts/count
  // ADC reading * 6.458 = battery voltage in milliVolts
  static unsigned long BatteryHalfADC = 0 ;
  static float BatteryScalarADCtomV = 6.65 ; // adjusted to match reading from multimeter
  static float BatterymV = 0 ;

  static unsigned long ReadPeriodms = 5000;
  static unsigned long NowTime = 0;
  static unsigned long AnalogReadTimer = 0;
  
  NowTime = millis();
  if ((NowTime - AnalogReadTimer) >= ReadPeriodms)
  {
    BatteryHalfADC = analogRead(Pin_Battery_Voltage);
    AnalogReadTimer = NowTime;
    BatterymV = BatteryHalfADC * BatteryScalarADCtomV;
    Serial.print("Battery ");
    Serial.print(BatterymV,0);
    Serial.println(" mV.");
  }

}
