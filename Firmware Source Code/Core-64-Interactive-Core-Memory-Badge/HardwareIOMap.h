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

// Hardware for Core_Driver.h
	#define Pin_Sense_Pulse             0   // INPUT  DIGITAL
/*
		#define PIN_MATRIX_DRIVE_1_Q1P      1   // OUTPUT DIGITAL
		#define PIN_MATRIX_DRIVE_2_Q1N      2
		#define PIN_MATRIX_DRIVE_3_Q2P      3
		#define PIN_MATRIX_DRIVE_4_Q2N      4
		#define PIN_MATRIX_DRIVE_5_Q3P      5
		#define PIN_MATRIX_DRIVE_6_Q3N      6
		#define PIN_MATRIX_DRIVE_7_Q4P      7
		#define PIN_MATRIX_DRIVE_8_Q4N      8
		#define PIN_MATRIX_DRIVE_9_Q5P      9
		#define PIN_MATRIX_DRIVE_10_Q5N    10
		#define PIN_MATRIX_DRIVE_11_Q6P    11
		#define PIN_MATRIX_DRIVE_12_Q6N    12

		#define PIN_MATRIX_DRIVE_13_Q7P    13   // Shared with built-in LED
		#define PIN_MATRIX_DRIVE_14_Q7N    14    
		#define PIN_MATRIX_DRIVE_15_Q8P    15    
		#define PIN_MATRIX_DRIVE_16_Q8N    16    
		#define PIN_MATRIX_DRIVE_17_Q9P    17    // Transistor matrix to address the cores. Shared pin 17. With LED array. Return to previous state when finished using.
		#define PIN_MATRIX_DRIVE_18_Q9N    20    // 
		#define PIN_MATRIX_DRIVE_19_Q10P   21    // 
		#define PIN_MATRIX_DRIVE_20_Q10N   22    //
		#define Pin_Write_Enable           23    // OUTPUT DIGITAL (Could be another analog input)
*/
	// Not sure which way to define these is more useful, so here is another way to try.
	#define PIN_MATRIX_DRIVE_Q1P      1   // OUTPUT DIGITAL
	#define PIN_MATRIX_DRIVE_Q1N      2
	#define PIN_MATRIX_DRIVE_Q2P      3
	#define PIN_MATRIX_DRIVE_Q2N      4
	#define PIN_MATRIX_DRIVE_Q3P      5
	#define PIN_MATRIX_DRIVE_Q3N      6
	#define PIN_MATRIX_DRIVE_Q4P      7
	#define PIN_MATRIX_DRIVE_Q4N      8
	#define PIN_MATRIX_DRIVE_Q5P      9
	#define PIN_MATRIX_DRIVE_Q5N     10
	#define PIN_MATRIX_DRIVE_Q6P     11
	#define PIN_MATRIX_DRIVE_Q6N     12

	#define PIN_MATRIX_DRIVE_Q7P     13   // Shared with built-in LED
	#define PIN_MATRIX_DRIVE_Q7N     14    
	#define PIN_MATRIX_DRIVE_Q8P     15    
	#define PIN_MATRIX_DRIVE_Q8N     16    
	#define PIN_MATRIX_DRIVE_Q9P     17    // Transistor matrix to address the cores. Shared pin 17. With LED array. Return to previous state when finished using.
	#define PIN_MATRIX_DRIVE_Q9N     20    // 
	#define PIN_MATRIX_DRIVE_Q10P    21    // 
	#define PIN_MATRIX_DRIVE_Q10N    22    //
	
	#define PIN_WRITE_ENABLE         23    // OUTPUT DIGITAL (Could be another analog input)


// Hardware for Built-in LED
	#define Pin_Built_In_LED           13   // Shared with Matrix Drive Q7P

// Hardware for RGB LED Array
	#define Pin_LED_Array              17    // Teensy LC pin with buffered Digital Pin 17 driven at Vin. Shared pin 17. Return to previous state when finished using. 

// Hardware for OLED Display
	#define Pin_I2C_Bus_Data           18    // Default is SCL0 and SDA0 on pins 19/18 of Teensy LC. #define not needed, as Wire.h library takes care of this pin configuration.
	#define Pin_I2C_Bus_Clock          19    // Default is SCL0 and SDA0 on pins 19/18 of Teensy LC. #define not needed, as Wire.h library takes care of this pin configuration.

// Hardware for Battery Voltage Monitor
	#define Pin_Battery_Voltage       A10    // 1/2 the battery voltage (otherwise known as Digital pin 24)

// Hardware for Buttons
	#define Pin_Reed_Switch            25    // INPUT  DIGITAL (also used as digital output for debugging
	#define Pin_Hall_Switch            26    // INPUT  DIGITAL

#ifdef __cplusplus
} // extern "C"
#endif

#endif
