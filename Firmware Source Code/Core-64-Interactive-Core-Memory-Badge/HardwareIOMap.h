/*
	PURPOSE: Define/assign/log the version scheme and number.
				Map out all of the IO for each version of the Core 64 hardware.
         		The Hardware_IO_Map.cpp file detects and sets the hardware version.
         		Specify firmware version manually in this file as a string.
	SETUP: Manually update the field assigned as VERSION


  	HARDWARE VERSION SCHEME (see https://semver.org/)
		Given a version number MAJOR.MINOR.PATCH, increment the:
			MAJOR version when you make incompatible API changes,
			MINOR version when you add functionality in a backwards compatible manner, and
			PATCH version when you make backwards compatible bug fixes.
	
	FIRMWARE VERSION SCHEME 
	    Same as hardware version scheme, with additional metadata extensions:
		    -DATE 		Example: -200101
						Two digit month, two digit day of the month
			.TIME 	    Example: |0800
						Time increments from build to build to clearly denote each unqiue iteration
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

// #define SDCARD_ENABLE                  // Save program memory (6K) with Teensy LC by commenting this out.
// #define AMBIENT_LIGHT_SENSOR_ENABLE   // Save program memory (14K) with Teensy LC by commenting this out.
#define HALL_SENSOR_ENABLE

void DetectHardwareVersion ();		// Use once to detect and set the hardware version variables.

/*
	****************************************** HARDWARE VERSION TABLE ******************************************
	| VERSION |  DATE      | DESCRIPTION                                                                       |
	------------------------------------------------------------------------------------------------------------
	| v0.1.0  | 2019-08-09 | Single board prototype development
	| v0.1.5  | 2020-02-22 | Single board, reworked board fixes, prototype development
	| v0.2.0  | 2020-03-16 | Single board, design updated to match v0.1.5, theoretically (not produced)
	| v0.3.0  | 2020-05-30 | Dual board, hardware version detection for 0.2.x (includes v0.1.x) and v0.3.x
	| v0.3.1  | 2020-05-30 | Two voltage regulators, 5V0 and 3V3, powered from common switch point
	------------------------------------------------------------------------------------------------------------
*/

	// #define FIRMWAREVERSION "0.3.0-0530.1340" // TO DO: update OLED UI to include whole string.
	#define FIRMWAREVERSION "0801.1730" // Testing without the hall switch requires manual over ride of HALL_1 input state

/*
	****************************************** FIRMWARE VERSION TABLE ******************************************
	| VERSION |  DATE      | DESCRIPTION                                                                       |
	------------------------------------------------------------------------------------------------------------
	| v0.1.0  | 2019-      | 
	| v0.1.5  | 2020-      | 
	| v0.2.0  | 2020-      | 
	| v0.3.x  | 2020-      | 
	------------------------------------------------------------------------------------------------------------
*/
	extern uint8_t HardwareVersionMajor  ;
	extern uint8_t HardwareVersionMinor  ;
	extern uint8_t HardwareVersionPatch  ;

// HARDWARE COMMON
	#define Pin_Built_In_LED         	13   // V0.1.x and 0.2.x Shared with Matrix Drive Q7P
	#define Pin_RGB_LED_Array           17   // V0.1.x and 0.2.x Shared with Teensy LC buffered Digital Pin 17 driven at Vin. Return to previous state when finished using. 
	#define Pin_I2C_Bus_Data         	18   // Default is SCL0 and SDA0 on pins 19/18 of Teensy LC. #define not needed, as Wire.h library takes care of this pin configuration.
	#define Pin_I2C_Bus_Clock        	19   // Default is SCL0 and SDA0 on pins 19/18 of Teensy LC. #define not needed, as Wire.h library takes care of this pin configuration.

// HARDWARE v0.1.x through 0.2.x
	#define Pin_v020_Sense_Pulse         0   // INPUT  DIGITAL
	#define PIN_MATRIX_DRIVE_Q1P     	 1   // OUTPUT DIGITAL
	#define PIN_MATRIX_DRIVE_Q1N     	 2
	#define PIN_MATRIX_DRIVE_Q2P     	 3
	#define PIN_MATRIX_DRIVE_Q2N     	 4
	#define PIN_MATRIX_DRIVE_Q3P     	 5
	#define PIN_MATRIX_DRIVE_Q3N     	 6
	#define PIN_MATRIX_DRIVE_Q4P     	 7
	#define PIN_MATRIX_DRIVE_Q4N     	 8
	#define PIN_MATRIX_DRIVE_Q5P     	 9
	#define PIN_MATRIX_DRIVE_Q5N     	10
	#define PIN_MATRIX_DRIVE_Q6P     	11
	#define PIN_MATRIX_DRIVE_Q6N     	12
	#define PIN_MATRIX_DRIVE_Q7P     	13  // Shared with built-in LED
	#define PIN_MATRIX_DRIVE_Q7N     	14   
	#define PIN_MATRIX_DRIVE_Q8P     	15   
	#define PIN_MATRIX_DRIVE_Q8N     	16   
	#define PIN_MATRIX_DRIVE_Q9P     	17  // Transistor matrix to address the cores. Shared pin 17. With LED array. Return to previous state when finished using.
	#define PIN_MATRIX_DRIVE_Q9N     	20  // 
	#define PIN_MATRIX_DRIVE_Q10P    	21  // 
	#define PIN_MATRIX_DRIVE_Q10N    	22  //	
	#define PIN_WRITE_ENABLE         	23  // OUTPUT DIGITAL (Could be another analog input)
	#define Pin_v020_Battery_Voltage   A10  // 1/2 the battery voltage (otherwise known as Digital pin 24)
	#define Pin_Reed_Switch             25  // INPUT  DIGITAL (also used as digital output for debugging
	#define Pin_Hall_Switch             26  // INPUT  DIGITAL

// HARDWARE v0.3.x
	#define Pin_v030_Sense_Out_A         8  // INPUT  DIGITAL
	#define Pin_v030_Sense_Out_B         9  // INPUT  DIGITAL
	#define Pin_v030_Battery_Voltage    A7  // 1/2 the battery voltage (otherwise known as Digital pin 24)
	#define Pin_v030_Hall_Switch_2    	A9  // Test Hall Switch on analog input (otherwise known as Digital pin 23)
	#define IOE38_INT_A					 2	// INPUT DIGITAL
	#define IOE38_INT_B					 3	// INPUT DIGITAL
	#define IOE39_INT_A					 4	// INPUT DIGITAL
	#define IOE39_INT_B					 5	// INPUT DIGITAL

	#define PIN_SD_CS     				10  // OUTPUT DIGITAL

	/*
	IOE38CoresOnly with MCP23017 Adafruit Library Assignment (0x26)
				Core 64 Assignment				Pin ID 		Physial Pin #	Pin Name	Direction
	*/			
	#define IOE38_MATRIX_DRIVE_Q5P	 			 0		//	21				GPA0		Output
	#define IOE38_MATRIX_DRIVE_Q5N   			 1 		//	22				GPA1		Output
	#define IOE38_MATRIX_DRIVE_Q6P   			 2 		//	23				GPA2		Output
	#define IOE38_MATRIX_DRIVE_Q6N   			 3 		//	24				GPA3		Output
	#define IOE38_MATRIX_DRIVE_Q7P   			 4 		//	25				GPA4		Output
	#define IOE38_MATRIX_DRIVE_Q7N   			 5 		//	26				GPA5		Output
	#define IOE38_MATRIX_DRIVE_Q8P   			 6 		//	27				GPA6		Output
	#define IOE38_MATRIX_DRIVE_Q8N   			 7 		//	28				GPA7		Output
	#define IOE38_MATRIX_DRIVE_Q9P   			 8 		//	1				GPB0		Output
	#define IOE38_MATRIX_DRIVE_Q9N   			 9 		//	2				GPB1		Output
	#define IOE38_MATRIX_DRIVE_Q10P  			10		//	3				GPB2		Output
	#define IOE38_MATRIX_DRIVE_Q10N  			11		//	4				GPB3		Output
	#define IOE38_MATRIX_DRIVE_Q3P   			12		//	5				GPB4		Output
	#define IOE38_MATRIX_DRIVE_Q3N   			13		//	6				GPB5		Output
	#define IOE38_MATRIX_DRIVE_Q4P   			14		//	7				GPB6		Output
	#define IOE38_MATRIX_DRIVE_Q4N   			15		//	8				GPB7		Output
	/*
    IOE39CoresSenseHalls with MCP23017 Adafruit Library Assignment (0x27)
				Core 64 Assignment				Pin ID 		Physial Pin #	Pin Name	
	*/
	#define IOE39_MATRIX_DRIVE_Q1P 			 	 0		//	21				GPA0		Output				
	#define IOE39_MATRIX_DRIVE_Q1N				 1 		//	22				GPA1		Output
	#define IOE39_MATRIX_DRIVE_Q2P				 2 		//	23				GPA2		Output
	#define IOE39_MATRIX_DRIVE_Q2N				 3 		//	24				GPA3		Output
	#define IOE39_Hall_Switch_1					 4 		//	25				GPA4		Input			
	#define IOE39_Hall_Switch_2					 5 		//	26				GPA5		Input			
	#define IOE39_Hall_Switch_3					 6 		//	27				GPA6		Input			
	#define IOE39_Hall_Switch_4					 7 		//	28				GPA7		Input			
	#define IOE39_MATRIX_DRIVE_Spare_1			 8 		//	1				GPB0		Spare/Undefined	
	#define IOE39_MATRIX_DRIVE_Spare_2			 9 		//	2				GPB1		Spare/Undefined	
	#define IOE39_MATRIX_DRIVE_Spare_3			10		//	3				GPB2		Spare/Undefined	
	#define IOE39_MATRIX_DRIVE_Spare_4			11		//	4				GPB3		Spare/Undefined	
	#define IOE39_MATRIX_DRIVE_Spare_5			12		//	5				GPB4		Spare/Undefined	
	#define IOE39_MATRIX_DRIVE_Write_Enable		13		//	6				GPB5		Output			
	#define IOE39_MATRIX_DRIVE_Sense_Reset		14		//	7				GPB6		Output	
	#define IOE39_MATRIX_DRIVE_Sense_Pulse		15		//	8				GPB7		Input	

#ifdef __cplusplus
} // extern "C"
#endif

#endif // HARDWARE_IO_MAP_H
