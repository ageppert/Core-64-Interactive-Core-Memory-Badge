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

#define Pin_Sense_Pulse         0   // INPUT  DIGITAL
#define Pin_Matrix_Drive_1      1   // OUTPUT DIGITAL
#define Pin_Matrix_Drive_2      2
#define Pin_Matrix_Drive_3      3
#define Pin_Matrix_Drive_4      4
#define Pin_Matrix_Drive_5      5
#define Pin_Matrix_Drive_6      6
#define Pin_Matrix_Drive_7      7
#define Pin_Matrix_Drive_8      8
#define Pin_Matrix_Drive_9      9
#define Pin_Matrix_Drive_10    10
#define Pin_Matrix_Drive_11    11
#define Pin_Matrix_Drive_12    12

#define Pin_Matrix_Drive_13    13   // Shared with built-in LED
#define Pin_Built_In_LED       13   // Shared with Matrix Drive
#define Pin_Matrix_Drive_14    14    
#define Pin_Matrix_Drive_15    15    
#define Pin_Matrix_Drive_16    16    
#define Pin_Matrix_Drive_17    17    // Transistor matrix to address the cores. Shared pin 17. Return to previous state when finished using.
#define Pin_LED_Array          17    // Teensy LC pin with buffered Digital Pin 17 driven at Vin. Shared pin 17. Return to previous state when finished using. 
#define Pin_I2C_Bus_Data       18    // Default is SCL0 and SDA0 on pins 19/18 of Teensy LC. #define not needed, as Wire.h library takes care of this pin configuration.
#define Pin_I2C_Bus_Clock      19    // Default is SCL0 and SDA0 on pins 19/18 of Teensy LC. #define not needed, as Wire.h library takes care of this pin configuration.
#define Pin_Matrix_Drive_18    20    // 
#define Pin_Matrix_Drive_19    21    // 
#define Pin_Matrix_Drive_20    22    //
#define Pin_Write_Enable       23    // OUTPUT DIGITAL (Could be another analog input)
#define Pin_Battery_Voltage   A10    // 1/2 the battery voltage (otherwise known as Digital pin 24)
#define Pin_Reed_Switch        25    // INPUT  DIGITAL
#define Pin_Hall_Switch        26    // INPUT  DIGITAL

#ifdef __cplusplus
} // extern "C"
#endif

#endif
