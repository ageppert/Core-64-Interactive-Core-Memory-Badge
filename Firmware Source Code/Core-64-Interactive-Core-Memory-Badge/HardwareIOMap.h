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

#define SDCARD_ENABLE                  			// Program memory (6K) with Teensy LC
#define AMBIENT_LIGHT_SENSOR_LTR329_ENABLE   		// Program memory (14K) with Teensy LC
#define HALL_SENSOR_ENABLE							// Program memory (10K)
#define NEON_PIXEL_ARRAY

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
	| v0.4.0  | 2020-11-28 | Blue LB, Yellow CB with Plane 4 set, as-built bring-up
	------------------------------------------------------------------------------------------------------------
*/
	// #define FIRMWAREVERSION "0.3.0-210530.1340"
	#define FIRMWAREVERSION "210119.2110" // Testing without the hall switch requires manual over ride of HALL_1 input state
/*
	****************************************** FIRMWARE VERSION TABLE ******************************************
	| VERSION |  DATE      | DESCRIPTION                                                                       |
	------------------------------------------------------------------------------------------------------------
	| v0.1.0  | 2019-      | 
	| v0.1.5  | 2020-      | 
	| v0.2.0  | 2020-      | 
	| v0.3.x  | 2020-      | 
	| v0.4.x  | 2020-11-28 | 
	------------------------------------------------------------------------------------------------------------
*/
	extern uint8_t HardwareVersionMajor  ;
	extern uint8_t HardwareVersionMinor  ;
	extern uint8_t HardwareVersionPatch  ;

// HARDWARE v0.4.0
	#define Pin_Built_In_LED         	13   // Shared with SPI CLOCK
// SPI
    #define Pin_SPI_OLED_CS				 2
    #define Pin_SPI_TOUCH_CS			 4
	#define Pin_SPI_SD_CS     		     6  
    #define Pin_SPI_LCD_CS				 8
    #define Pin_SPI_LCD_DC				 9
    #define Pin_SPI_TeensyView_CS		10
    #define Pin_SPI_SDO					11
    #define Pin_SPI_SDI					12
	#define Pin_SPI_SD_CD     			A11
    #define Pin_SPI_CLK                 13
	#define Pin_SPI_Reset_Spare_5		15
	#define Pin_SPI_TeensyView_DC		21
	#define Pin_SPI_OLED_DC				23
// I2C
	#define Pin_I2C_Bus_Data         	18   // Default is SCL0 and SDA0 on pins 19/18 of Teensy LC. #define not needed, as Wire.h library takes care of this pin configuration.
	#define Pin_I2C_Bus_Clock        	19   // Default is SCL0 and SDA0 on pins 19/18 of Teensy LC. #define not needed, as Wire.h library takes care of this pin configuration.
// LED ARRAY
	#define Pin_RGB_LED_Array           20   // V0.4.x OR optional  
// MATRIX DRIVE
	#define PIN_MATRIX_DRIVE_Q1P     	 2   // OUTPUT DIGITAL
	#define PIN_MATRIX_DRIVE_Q1N     	 3
	#define PIN_MATRIX_DRIVE_Q2P     	 4
	#define PIN_MATRIX_DRIVE_Q2N     	 5
	#define PIN_MATRIX_DRIVE_Q3P     	 6
	#define PIN_MATRIX_DRIVE_Q3N     	 7
	#define PIN_MATRIX_DRIVE_Q4P     	 8
	#define PIN_MATRIX_DRIVE_Q4N     	 9
	#define PIN_MATRIX_DRIVE_Q5P     	16
	#define PIN_MATRIX_DRIVE_Q5N     	17
	#define PIN_MATRIX_DRIVE_Q6P     	24
	#define PIN_MATRIX_DRIVE_Q6N     	25
	#define PIN_MATRIX_DRIVE_Q7P     	26  // 
	#define PIN_MATRIX_DRIVE_Q7N     	27   
	#define PIN_MATRIX_DRIVE_Q8P     	28   
	#define PIN_MATRIX_DRIVE_Q8N     	29   
	#define PIN_MATRIX_DRIVE_Q9P     	30
	#define PIN_MATRIX_DRIVE_Q9N     	31  // 
	#define PIN_MATRIX_DRIVE_Q10P    	32  // 
	#define PIN_MATRIX_DRIVE_Q10N    	33  //	
	#define PIN_WRITE_ENABLE         	23  // 
// MATRIX SENSE
	#define Pin_Sense_Pulse         	22   // 
	#define Pin_Sense_Reset         	21   // 
// MISC
	#define Pin_Battery_Voltage          A10  // 1/2 the battery voltage (otherwise known as Digital pin 24)
	#define Pin_SAO_G1_SPARE_1_CP_ADDR_0 0   // 
	#define Pin_SAO_G1_SPARE_2_CP_ADDR_1 1   // 
	#define Pin_IR_OUT					 5
    #define Pin_Spare_4_IR_IN			10
    #define Pin_Spare_ADC_DAC			A14
	#define Pin_SPARE_3_CP_ADDR_2		14  //
	#define Pin_SPARE_ANA_6				A11
	#define Pin_SPARE_ANA_7				A12
	#define Pin_SPARE_ANA_8				A13


#ifdef __cplusplus
} // extern "C"
#endif

#endif // HARDWARE_IO_MAP_H
