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

// #define SDCARD_ENABLE                  			// 
#define AMBIENT_LIGHT_SENSOR_LTR329_ENABLE   		// 
#define HALL_SENSOR_ENABLE							// 
// #define HALL_SWITCH_ENABLE
#define NEON_PIXEL_ARRAY							// Serpentine, like Pimoroni Unicorn Hat
#define CORE64_LED_MATRIX							// Row Major, Progressive layout. Just like an array in C.
#define OLED_64X128
// #define OLED_128X128


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
	| v0.5.0  | 2021-03-20 | Triple-board, Black LB/CB/CM
	------------------------------------------------------------------------------------------------------------
*/
	#define FIRMWAREVERSION "210425.2003"	// TO DO: Expand to be "0.4.0-210530.1340"
/*
	****************************************** FIRMWARE VERSION TABLE ******************************************
	| VERSION |  DATE      | DESCRIPTION                                                                       |
	------------------------------------------------------------------------------------------------------------
	| v0.1.0  | 2019-      | 
	| v0.1.5  | 2020-      | 
	| v0.2.0  | 2020-      | 
	| v0.3.x  | 2020-      | 
	| v0.4.x  | 2020-11-28 | 
	| v0.5.x  | 2021-03-20 | Accept V0.5.x hardware, manual default to the custom-fit LED Matrix.
	| v0.5.x  | 2021-04-25 | Beta Kit Release
	------------------------------------------------------------------------------------------------------------
*/
	extern uint8_t HardwareVersionMajor  ;
	extern uint8_t HardwareVersionMinor  ;
	extern uint8_t HardwareVersionPatch  ;

// HARDWARE v0.5.0
// MATRIX DRIVE
	#define PIN_MATRIX_DRIVE_Q1P     	 2	// * Shared
	#define PIN_MATRIX_DRIVE_Q1N     	 3
	#define PIN_MATRIX_DRIVE_Q2P     	 4	// * Shared
	#define PIN_MATRIX_DRIVE_Q2N     	 5	// * Shared
	#define PIN_MATRIX_DRIVE_Q3P     	 6	// * Shared
	#define PIN_MATRIX_DRIVE_Q3N     	 7
	#define PIN_MATRIX_DRIVE_Q4P     	 8	// * Shared
	#define PIN_MATRIX_DRIVE_Q4N     	 9	// * Shared
	#define PIN_MATRIX_DRIVE_Q5P     	16
	#define PIN_MATRIX_DRIVE_Q5N     	17
	#define PIN_MATRIX_DRIVE_Q6P     	24
	#define PIN_MATRIX_DRIVE_Q6N     	25
	#define PIN_MATRIX_DRIVE_Q7P     	26
	#define PIN_MATRIX_DRIVE_Q7N     	27   
	#define PIN_MATRIX_DRIVE_Q8P     	28   
	#define PIN_MATRIX_DRIVE_Q8N     	29   
	#define PIN_MATRIX_DRIVE_Q9P     	30
	#define PIN_MATRIX_DRIVE_Q9N     	31 
	#define PIN_MATRIX_DRIVE_Q10P    	32 
	#define PIN_MATRIX_DRIVE_Q10N    	33	
	#define PIN_WRITE_ENABLE         	23	// * Shared 
// MATRIX SENSE
	#define Pin_Sense_Reset         	21	// * Shared
	#define Pin_Sense_Pulse         	22	// * Shared
// LED ARRAY
	#define Pin_RGB_LED_Array           20	// * Shared 
// SPI
    #define Pin_SPI_OLED_CS				 2	// * Shared, digital output
    #define Pin_SPI_TOUCH_CS			 4	// * Shared, digital output
	#define Pin_SPI_SD_CS     		     6	// * Shared, digital output
    #define Pin_SPI_LCD_CS				 8	// * Shared, digital output
    #define Pin_SPI_LCD_DC				 9	// * Shared, digital output
    #define Pin_SPI_TeensyView_CS		10	// * Shared, digital output
    #define Pin_SPI_SDO					11  // Default Teensy
    #define Pin_SPI_SDI					12  // Default Teensy
	#define Pin_SPI_SD_CD     		    14	// * Shared, digital input and output
    #define Pin_SPI_CLK                 13	// * Shared, digital output
	#define Pin_SPI_Reset_Spare_5		15	// * Shared, digital output, multipurpose use, choose one #define below to uncomment and activate
		// #define Pin_SPARE_5_Assigned_To_Spare_5_Output
		#define Pin_SPARE_5_Assigned_To_Spare_5_Analog
    #define Pin_SPI_LCD_BACKLIGHT		20	// * Shared, digital output
	#define Pin_SPI_TeensyView_DC		21	// * Shared, digital output
	#define Pin_SPI_OLED_DC				23	// * Shared, digital output
// I2C
	#define Pin_I2C_Bus_Data         	18  // Default Teensy. #define not needed, as Wire.h library takes care of this pin configuration.
	#define Pin_I2C_Bus_Clock        	19  // Default Teensy. #define not needed, as Wire.h library takes care of this pin configuration.
// MISC
	#define Pin_SAO_G1_SPARE_1_CP_ADDR_0 0	// * Shared, multipurpose use, choose one #define below to uncomment and activate
		#define Pin_SAO_G1_SPARE_1_CP_ADDR_0_Assigned_To_CP_ADDR_0_Output
	#define Pin_SAO_G2_SPARE_2_CP_ADDR_1 1	// * Shared, multipurpose use, choose one #define below to uncomment and activate
		#define Pin_SAO_G2_SPARE_2_CP_ADDR_1_Assigned_To_CP_ADDR_1_Output
	#define Pin_IR_OUT					 5	// * Shared, digital output, multipurpose use, choose one #define below to uncomment and activate
    #define Pin_Spare_4_IR_IN			10	// * Shared
		#define Pin_Spare_4_IR_IN_Assigned_To_Spare_4_Output
	#define Pin_Built_In_LED         	13  // * Shared with SPI CLOCK
	//#define Pin_SPARE_3_CP_ADDR_2		14	// * Shared, multipurpose use, choose one #define below to uncomment and activate
		// #define Pin_SPARE_3_Assigned_To_Spare_3_Output
		// #define Pin_SPARE_3_CP_ADDR_2_Assigned_To_CP_ADDR_2_Output
		// #define Pin_SPARE_3_Assigned_To_Spare_3_Input
		// #define Pin_SPARE_3_Assigned_To_SPI_SD_CD_Input
		#define Pin_SPARE_3_Assigned_To_Spare_3_Analog_Input A0
	#define Pin_Battery_Voltage        A10  // 1/2 the battery voltage (otherwise known as Digital pin 24)
	#define Pin_SPARE_ANA_6			   A11
	#define Pin_SPARE_ANA_7			   A12
	#define Pin_SPARE_ANA_8			   A13
    #define Pin_Spare_ADC_DAC		   A14
    #ifdef HALL_SWITCH_ENABLE
		#define PIN_HALL_SWITCH_1		 1
		#define PIN_HALL_SWITCH_2		 2
		#define PIN_HALL_SWITCH_3		14
		#define PIN_HALL_SWITCH_4		10		
    #endif

#ifdef __cplusplus
} // extern "C"
#endif

#endif // HARDWARE_IO_MAP_H
