#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif
#include "HardwareIOMap.h"

#ifdef AMBIENT_LIGHT_SENSOR_ENABLE
  #include "Ambient_Light_Sensor.h"
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
    uint32_t luxMax = 30199;
    uint32_t luxVal = 0; 

  uint8_t AmbientLightSensorType = 0;           // 0 = no sensor available
                                                // 1 = SparkFun Ambient Light Sensor VEML6030 QWIIC SEN-15436
                                                // 2 = SparkFun Proximity + Ambient Light VCNL4040 QWIIC SEN-15177
                                                // 3 = LTR-329
  uint8_t AmbientLightLevel8BIT = 0 ;           // Scaled 0 to 255, darkest to brightest lux range
  static uint8_t AmbientLightScalarBitShift = 7;        // 
  static uint8_t AmbientLightLtr329ScalarBitShift = 3;        // 

  void AmbientLightSetup() {
    Serial.println("\nTroubleshooting Light Sensor VEML6030..."); 
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
    if(AmbientLightSensorType==0)
    {
      Serial.println("No light sensor found.");      
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
      if(luxVal>=luxMax)   // If input lux level is saturated
      {
        AmbientLightLevel8BIT = 250;                  // assign max level to 8bit value to avoid rollover to lower level
      }
      else
      {
        AmbientLightLevel8BIT = (uint8_t) (luxVal >> AmbientLightScalarBitShift);  // Simple linear scaling of lux to 0-255    
      }
      if(AmbientLightLevel8BIT > 250) {AmbientLightLevel8BIT = 250;}
    }
    if (AmbientLightSensorType == 2)
    {


    }
  }

  void AmbientLightUpdate() {
    static unsigned long Periodms = 100; // 1000;
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
#endif // AMBIENT_LIGHT_SENSOR_ENABLE

#ifdef AMBIENT_LIGHT_SENSOR_LTR329_ENABLE
  #include "Ambient_Light_Sensor.h"
  #include "I2C_Manager.h"
  // #include <Wire.h>

  #include "src/LTR329/LTR329_Driver.h"
  #define AL_ADDR 0x29

  LTR303 light;
  unsigned char gain;     // Gain setting, values = 0-7 
  unsigned char integrationTime;  // Integration ("shutter") time in milliseconds
  unsigned char measurementRate;  // Interval between DATA_REGISTERS update
  unsigned char intTime = 0;
  unsigned char Rate = 0;

  // These demo settings yield maximum lux reading = 30199 so that can be >>7 (aka /128) to yield 236 max.
  uint32_t luxMax = 30199;
  uint32_t luxVal = 0; 

  uint8_t AmbientLightSensorType = 0;           // 0 = no sensor available
                                                // 1 = SparkFun Ambient Light Sensor VEML6030 QWIIC SEN-15436
                                                // 2 = SparkFun Proximity + Ambient Light VCNL4040 QWIIC SEN-15177
                                                // 3 = LTR-329
  uint8_t AmbientLightLevel8BIT = 0 ;           // Scaled 0 to 255, darkest to brightest lux range
  static uint8_t AmbientLightScalarBitShift = 7;        // 

  void AmbientLightSetup() {
    Serial.println("\nTroubleshooting Light Sensor LTR-329..."); 
 
    light.begin();

    // Get factory ID from sensor:
    // (Just for fun, you don't need to do this to operate the sensor)
    unsigned char ID;
    
    if (light.getPartID(ID)) {
      AmbientLightSensorType = 3;
      Serial.print("Got LTR-329 Sensor Part ID: 0X");
      Serial.println(ID,HEX);
    }
    // Most library commands will return true if communications was successful,
    // and false if there was a problem. You can ignore this returned value,
    // or check whether a command worked correctly and retrieve an error code:
    else {
      byte error = light.getError();
      Serial.print("LTR-329 Sensor Part Error: ");
      Serial.println(error);
    }

    if(AmbientLightSensorType==0)
    {
      Serial.println("No light sensor found.");      
    } 
  
    if(AmbientLightSensorType==3)
    {
      // The light sensor has a default integration time of 100ms,
      // and a default gain of low (1X).
      
      // If you would like to change either of these, you can
      // do so using the setControl() and setMeasurementRate() command.
      
      // Gain can take any value from 0-7, except 4 & 5
      // If gain = 0, device is set to 1X gain (default)
      // If gain = 1, device is set to 2X gain
      // If gain = 2, device is set to 4X gain
      // If gain = 3, device is set to 8X gain
      // If gain = 4, invalid
      // If gain = 5, invalid
      // If gain = 6, device is set to 48X gain
      // If gain = 7, device is set to 96X gain
      gain = 0;
      Serial.println("Setting Gain...");
      light.setControl(gain, false, false);

      // If integrationTime = 0, integrationTime will be 100ms (default)
      // If integrationTime = 1, integrationTime will be 50ms
      // If integrationTime = 2, integrationTime will be 200ms
      // If integrationTime = 3, integrationTime will be 400ms
      // If integrationTime = 4, integrationTime will be 150ms
      // If integrationTime = 5, integrationTime will be 250ms
      // If integrationTime = 6, integrationTime will be 300ms
      // If integrationTime = 7, integrationTime will be 350ms

      intTime = 1;

      // If measurementRate = 0, measurementRate will be 50ms
      // If measurementRate = 1, measurementRate will be 100ms
      // If measurementRate = 2, measurementRate will be 200ms
      // If measurementRate = 3, measurementRate will be 500ms (default)
      // If measurementRate = 4, measurementRate will be 1000ms
      // If measurementRate = 5, measurementRate will be 2000ms
      // If measurementRate = 6, measurementRate will be 2000ms
      // If measurementRate = 7, measurementRate will be 2000ms
      Rate = 3;
      
      Serial.println("Set timing...");
      light.setMeasurementRate(intTime,Rate);

      // To start taking measurements, power up the sensor:
      
      Serial.println("Powerup...");
      light.setPowerUp();
      
      // The sensor will now gather light during the integration time.
      // After the specified time, you can retrieve the result from the sensor.
      // Once a measurement occurs, another integration period will start.
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

  uint16_t GetLtrLux () {
    // Wait between measurements before retrieving the result
    // You can also configure the sensor to issue an interrupt 
    // when measurements are complete)
    
    // This sketch uses the LTR303's built-in integration timer.
    
   
    
    
    // Once integration is complete, we'll retrieve the data.
    
    // There are two light sensors on the device, one for visible light
    // and one for infrared. Both sensors are needed for lux calculations.

    
    unsigned int data0, data1;
    if (light.getData(data0,data1)) {
      // getData() returned true, communication was successful
      
      Serial.print("data0: ");
      Serial.println(data0);
      Serial.print("data1: ");
      Serial.println(data1);
    
      // To calculate lux, pass all your settings and readings
      // to the getLux() function.
      
      // The getLux() function will return 1 if the calculation
      // was successful, or 0 if one or both of the sensors was
      // saturated (too much light). If this happens, you can
      // reduce the integration time and/or gain.
    
      double lux;    // Resulting lux value
      boolean good;  // True if neither sensor is saturated
      
      // Perform lux calculation:

      good = light.getLux(gain,intTime,data0,data1,lux);
      
      // Print out the results:
    
      Serial.print(" lux: ");
      Serial.println(lux);
      if (good) 
        {
          Serial.println(" (good)");
          return (good);
        }
      else 
        {
          Serial.println(" (BAD)");
        }
    }
    else {
      // getData() returned false because of an I2C error, inform the user.

      byte error = light.getError();
      Serial.println(error);
    }
  }

  void ReadAmbientLightLevel() {
    if (AmbientLightSensorType == 3)
    {
      luxVal = (uint32_t) GetLtrLux;
      if(luxVal>=luxMax)   // If input lux level is saturated
      {
        AmbientLightLevel8BIT = 250;                  // assign max level to 8bit value to avoid rollover to lower level
      }
      else
      {
        AmbientLightLevel8BIT = (uint8_t) (luxVal >> AmbientLightLtr329ScalarBitShift);  // Simple linear scaling of lux to 0-255    
      }
      if(AmbientLightLevel8BIT > 250) {AmbientLightLevel8BIT = 250;}
    }
  }

  void AmbientLightUpdate() {
    static unsigned long Periodms = 100; // 1000;
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

// AMBIENT_LIGHT_SENSOR_LTR329_ENABLE 

#else // NEITHER AMBIENT_LIGHT_SENSOR_ENABLE
  void AmbientLightSetup() {}
  uint8_t GetAmbientLightLevel8BIT() {return(25);}
  void ReadAmbientLightLevel() {}
  void AmbientLightUpdate() {}
  bool AmbientLightAvaible() {return(0);}
#endif // NEITHER AMBIENT_LIGHT_SENSOR_ENABLE
