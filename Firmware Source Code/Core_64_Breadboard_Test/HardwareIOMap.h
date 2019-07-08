/*
PURPOSE: Map out all of the IO
SETUP:
- 
*/
 
#ifndef HARDWARE_IO_MAP_H
#define HARDWARE_IO_MAP_H

#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

#define Pin_Sense          0   // INPUT  DIGITAL Discrete
#define Pin_Address_1      1   // OUTPUT DIGITAL Discrete
#define Pin_Address_2      2
#define Pin_Address_3      3
#define Pin_Address_4      4
#define Pin_Address_5      5
#define Pin_Address_6      6
#define Pin_Address_7      7
#define Pin_Address_8      8
#define Pin_Address_9      9
#define Pin_Address_10    10
#define Pin_Address_11    11
#define Pin_Address_12    12
#define Pin_Address_13    13    
#define Pin_Built_In_LED  13



#define Pin_Address_17    17    // Transistor matrix to address the cores. Shared pin 17. Return to previous state when finished using.
#define Pin_LED_Array     17    // Teensy LC pin with buffered Digital Pin 17 driven at Vin. Shared pin 17. Return to previous state when finished using. 
#define Pin_I2C_Bus_Data  18    // Default is SCL0 and SDA0 on pins 19/18 of Teensy LC. #define not needed, as Wire.h library takes care of this pin configuration.
#define Pin_I2C_Bus_Clock 19    // Default is SCL0 and SDA0 on pins 19/18 of Teensy LC. #define not needed, as Wire.h library takes care of this pin configuration.
#define Pin_Address_20    20 

#ifdef __cplusplus
} // extern "C"
#endif

#endif
