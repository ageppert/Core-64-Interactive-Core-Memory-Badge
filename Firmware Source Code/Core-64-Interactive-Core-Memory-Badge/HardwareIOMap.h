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

void DetectHardwareVersion ();		// Use once to detect and set the hardware version variables.



/*
	****************************************** HARDWARE VERSION TABLE ******************************************
	| VERSION |  DATE      | DESCRIPTION                                                                       |
	------------------------------------------------------------------------------------------------------------
	| v0.1.0  | 2019-08-09 | Single board prototype development
	| v0.1.5  | 2020-02-22 | Single board, reworked board fixes, prototype development
	| v0.2.0  | 2020-03-16 | Single board, design updated to match v0.1.5, theoretically (not produced)
	| v0.3.x  | 2020-05-30 | Dual board, hardware version detection for 0.2.x (includes v0.1.x) and v0.3.x
	------------------------------------------------------------------------------------------------------------
*/

	// #define FIRMWAREVERSION "0.3.0-0530.1340" // TO DO: update OLED UI to include who string.
	#define FIRMWAREVERSION "0607.1332" // Testing without the hall switch requires manual over ride of HALL_1 input state

/*
	****************************************** HARDWARE VERSION TABLE ******************************************
	| VERSION |  DATE      | DESCRIPTION                                                                       |
	------------------------------------------------------------------------------------------------------------
	| v0.1.0  | 2019-08-09 | Single board, GREEN, as designed, did not work with out modification
	| v0.1.5  | 2020-02-22 | Single board, GREEN, after rework, functional and tested
	| v0.2.0  | 2020-03-16 | Single board, N/A, design only revision based on 0.1.5 - not produced or tested
	| v0.3.x  | 2020-05-18 | Dual boards, RED, assembly in process
	------------------------------------------------------------------------------------------------------------
*/
	extern uint8_t HardwareVersionMajor  ;
	extern uint8_t HardwareVersionMinor  ;
	extern uint8_t HardwareVersionPatch  ;

// HARDWARE v0.1.0 through 0.2.0
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
	#define PIN_MATRIX_DRIVE_Q7P     	13   // Shared with built-in LED
	#define PIN_MATRIX_DRIVE_Q7N     	14    
	#define PIN_MATRIX_DRIVE_Q8P     	15    
	#define PIN_MATRIX_DRIVE_Q8N     	16    
	#define PIN_MATRIX_DRIVE_Q9P     	17   // Transistor matrix to address the cores. Shared pin 17. With LED array. Return to previous state when finished using.
	#define PIN_MATRIX_DRIVE_Q9N     	20   // 
	#define PIN_MATRIX_DRIVE_Q10P    	21   // 
	#define PIN_MATRIX_DRIVE_Q10N    	22   //	
	#define PIN_WRITE_ENABLE         	23   // OUTPUT DIGITAL (Could be another analog input)
	#define Pin_Built_In_LED         	13   // Shared with Matrix Drive Q7P
	#define Pin_RGB_LED_Array           17   // Teensy LC pin with buffered Digital Pin 17 driven at Vin. Shared pin 17. Return to previous state when finished using. 
	#define Pin_I2C_Bus_Data         	18   // Default is SCL0 and SDA0 on pins 19/18 of Teensy LC. #define not needed, as Wire.h library takes care of this pin configuration.
	#define Pin_I2C_Bus_Clock        	19   // Default is SCL0 and SDA0 on pins 19/18 of Teensy LC. #define not needed, as Wire.h library takes care of this pin configuration.
	#define Pin_v020_Battery_Voltage   A10   // 1/2 the battery voltage (otherwise known as Digital pin 24)
	#define Pin_Reed_Switch             25   // INPUT  DIGITAL (also used as digital output for debugging
	#define Pin_Hall_Switch             26   // INPUT  DIGITAL

// HARDWARE v0.3.0 through TBD
	#define Pin_v030_Sense_Pulse         0   // INPUT  DIGITAL
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
	#define PIN_MATRIX_DRIVE_Q7P     	13   // Shared with built-in LED
	#define PIN_MATRIX_DRIVE_Q7N     	14    
	#define PIN_MATRIX_DRIVE_Q8P     	15    
	#define PIN_MATRIX_DRIVE_Q8N     	16    
	#define PIN_MATRIX_DRIVE_Q9P     	17   // Transistor matrix to address the cores. Shared pin 17. With LED array. Return to previous state when finished using.
	#define PIN_MATRIX_DRIVE_Q9N     	20   // 
	#define PIN_MATRIX_DRIVE_Q10P    	21   // 
	#define PIN_MATRIX_DRIVE_Q10N    	22   //	
	#define PIN_WRITE_ENABLE         	23   // OUTPUT DIGITAL (Could be another analog input)
	#define Pin_Built_In_LED         	13   // Shared with Matrix Drive Q7P
	#define Pin_RGB_LED_Array           17   // Teensy LC pin with buffered Digital Pin 17 driven at Vin. Shared pin 17. Return to previous state when finished using. 
	#define Pin_I2C_Bus_Data         	18   // Default is SCL0 and SDA0 on pins 19/18 of Teensy LC. #define not needed, as Wire.h library takes care of this pin configuration.
	#define Pin_I2C_Bus_Clock        	19   // Default is SCL0 and SDA0 on pins 19/18 of Teensy LC. #define not needed, as Wire.h library takes care of this pin configuration.
	#define Pin_v030_Battery_Voltage    A7   // 1/2 the battery voltage (otherwise known as Digital pin 24)
	#define Pin_Reed_Switch             25   // INPUT  DIGITAL (also used as digital output for debugging
	#define Pin_Hall_Switch             26   // INPUT  DIGITAL
	/*
	IOE38CoresOnly
	MCP23017 Adafruit Library Assignment
	Physial Pin #	Pin Name	Pin ID 	Core 64 Assignment
	21				GPA0		0 		Q5P
	22				GPA1		1 		Q5N
	23				GPA2		2 		Q6P
	24				GPA3		3 		Q6N
	25				GPA4		4 		Q7P
	26				GPA5		5 		Q7N
	27				GPA6		6 		Q8P
	28				GPA7		7 		Q8N
	1				GPB0		8 		Q9P
	2				GPB1		9 		Q9N
	3				GPB2		10		Q10P
	4				GPB3		11		Q10N
	5				GPB4		12		Q3P
	6				GPB5		13		Q3N
	7				GPB6		14		Q4P
	8				GPB7		15		Q4N
	
    IOE39CoresSenseHalls
	MCP23017 Adafruit Library Assignment
	Physial Pin #	Pin Name	Pin ID 	Core 64 Assignment
	21				GPA0		0 		Q1P
	22				GPA1		1 		Q1N
	23				GPA2		2 		Q2P
	24				GPA3		3 		Q2N
	25				GPA4		4 		Hall_Switch_1
	26				GPA5		5 		Hall_Switch_2
	27				GPA6		6 		Hall_Switch_3
	28				GPA7		7 		Hall_Switch_4
	1				GPB0		8 		Spare_1
	2				GPB1		9 		Spare_2
	3				GPB2		10		Spare_3
	4				GPB3		11		Spare_4
	5				GPB4		12		Spare_5
	6				GPB5		13		Write_Enable
	7				GPB6		14		Sense_Reset
	8				GPB7		15		Sense_Pulse
	*/

	#define IOE39_Hall_Switch_1		4
	#define IOE39_Hall_Switch_2		5
	#define IOE39_Hall_Switch_3		6
	#define IOE39_Hall_Switch_4		7

#ifdef __cplusplus
} // extern "C"
#endif

#endif // HARDWARE_IO_MAP_H
