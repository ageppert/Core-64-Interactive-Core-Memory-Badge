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

#define Pin_Matrix_Drive_1_Q1P      1   // OUTPUT DIGITAL
#define Pin_Matrix_Drive_2_Q1N      2
#define Pin_Matrix_Drive_3_Q2P      3
#define Pin_Matrix_Drive_4_Q2N      4
#define Pin_Matrix_Drive_5_Q3P      5
#define Pin_Matrix_Drive_6_Q3N      6
#define Pin_Matrix_Drive_7_Q4P      7
#define Pin_Matrix_Drive_8_Q4N      8
#define Pin_Matrix_Drive_9_Q5P      9
#define Pin_Matrix_Drive_10_Q5N    10
#define Pin_Matrix_Drive_11_Q6P    11
#define Pin_Matrix_Drive_12_Q6N    12

#define Pin_Matrix_Drive_13_Q7P    13   // Shared with built-in LED
#define Pin_Matrix_Drive_14_Q7N    14    
#define Pin_Matrix_Drive_15_Q8P    15    
#define Pin_Matrix_Drive_16_Q8N    16    
#define Pin_Matrix_Drive_17_Q9P    17    // Transistor matrix to address the cores. Shared pin 17. With LED array. Return to previous state when finished using.
#define Pin_Matrix_Drive_18_Q9N    20    // 
#define Pin_Matrix_Drive_19_Q10P   21    // 
#define Pin_Matrix_Drive_20_Q10N   22    //
#define Pin_Write_Enable           23    // OUTPUT DIGITAL (Could be another analog input)

// Array for the matrix drive lines may be much easier and faster to manipulate than all of the complex names.
// Array position number 0 is not used in the matrix line numbering, so use it for the Write Enable pin.
// Matrix Drive Line # and array position  N/A 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15,16,17,18,19,20
static uint8_t PinMatrixDrive[] =       {23, 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15,16,17,20,21,22};
static bool PinMatrixDriveInactiveState[] = { 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0};

#define Pin_Sense_Pulse             0   // INPUT  DIGITAL

#define Pin_Built_In_LED           13   // Shared with Matrix Drive
#define Pin_LED_Array              17    // Teensy LC pin with buffered Digital Pin 17 driven at Vin. Shared pin 17. Return to previous state when finished using. 
#define Pin_I2C_Bus_Data           18    // Default is SCL0 and SDA0 on pins 19/18 of Teensy LC. #define not needed, as Wire.h library takes care of this pin configuration.
#define Pin_I2C_Bus_Clock          19    // Default is SCL0 and SDA0 on pins 19/18 of Teensy LC. #define not needed, as Wire.h library takes care of this pin configuration.
#define Pin_Battery_Voltage       A10    // 1/2 the battery voltage (otherwise known as Digital pin 24)
#define Pin_Reed_Switch            25    // INPUT  DIGITAL
#define Pin_Hall_Switch            26    // INPUT  DIGITAL

#ifdef __cplusplus
} // extern "C"
#endif

#endif
