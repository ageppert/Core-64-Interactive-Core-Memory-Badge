#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "Ambient_Light_Sensor.h"
#include "HardwareIOMap.h"
#include "I2C_Manager.h"
#include <Wire.h>

#include <SparkFun_VEML6030_Ambient_Light_Sensor.h>
  #define AL_ADDR 0x48
  SparkFun_Ambient_Light light(AL_ADDR);
  // Possible values: .125, .25, 1, 2
  // Both .125 and .25 should be used in most cases except darker rooms.
  // A gain of 2 should only be used if the sensor will be covered by a dark
  // glass.
  float gain = .125;
  // Possible integration times in milliseconds: 800, 400, 200, 100, 50, 25
  // Higher times give higher resolutions and should be used in darker light. 
  int time = 100;
  // These demo settings yield maximum lux reading = 30199 so that can be >>7 (aka /128) to yield 236 max.

  long luxVal = 0; 

uint8_t AmbientLightSensorType = 0;           // 0 = no sensor available
                                              // 1 = SparkFun Ambient Light Sensor VEML6030 QWIIC SEN-15436
                                              // 2 = SparkFun Proximity + Ambient Light VCNL4040 QWIIC SEN-15177
uint8_t AmbientLightLevel8BIT = 0 ;           // Scaled 0 to 255, darkest to brightest lux range
static uint8_t AmbientLightScalarBitShift = 7;        // 

void AmbientLightSetup() {
  // Determine which, if any, light sensor is available and configure it for readings
  if (I2CDetectExternalEEPROM(AL_ADDR)) { 
    AmbientLightSensorType = 1;
    Wire.begin();
    if(light.begin())
    {
      Serial.print("\nReady to sense some light! SensorType: "); 
    }
    else
    {
      Serial.print("\nCould not communicate with the sensor! SensorType: ");
    }
    Serial.println(AmbientLightSensorType); 
    light.setGain(gain);
    light.setIntegTime(time);
  }
  else if (I2CDetectExternalEEPROM(0x60)) { 
    AmbientLightSensorType = 2; 
  }
}

bool AmbientLightAvaible() {
  // Return 0 of not available, 1 if it is.
  if (AmbientLightSensorType)
  { 
    return 1;
  }
  else
  {
    return 0; 
  }
}

uint8_t GetAmbientLightLevel8BIT() {
  return (AmbientLightLevel8BIT);
}

void ReadAmbientLightLevel() {
  if (AmbientLightSensorType == 1)
  {
    luxVal = light.readLight();
    if(luxVal>=(255<<AmbientLightScalarBitShift))   // If input lux level is saturated
    {
      AmbientLightLevel8BIT = 255;                  // assign max level to 8bit value to avoid rollover to lower level
    }
    else
    {
      AmbientLightLevel8BIT = luxVal >> AmbientLightScalarBitShift;  // Simple linear scaling of lux to 0-255    
    }

  }
  if (AmbientLightSensorType == 2)
  {


  }
}

void AmbientLightUpdate() {
  static unsigned long Periodms = 1000;
  static unsigned long NowTimems = 0;
  static unsigned long Timerms = 0;
  if(AmbientLightAvaible())
    {
      NowTimems = millis();
      if ((NowTimems - Timerms) >= Periodms)
      {
        Timerms = NowTimems;
        ReadAmbientLightLevel();
        // /*
        Serial.print("Light: ");
        Serial.print(luxVal);
        Serial.print(" Lux || ");
        Serial.print(GetAmbientLightLevel8BIT());
        Serial.println(" 8BIT LEVEL");
        // */
      }
    }
  else
    {return;}
}
