/*
	PURPOSE: Define/assign/log the version scheme and number.
	SETUP: Manually update the field assigned as VERSION
*/

/*	VERSION SCHEME
	major.minor.date-iteration
	major.minor is locked to hardware version
	date is last two digits of year, two digit month, two digit day of the month
	iteration increments from build to build
*/

// TO DO: connect version number to a value that the firmware can interact with and display.

#ifndef VERSION_H
#define VERSION_H

#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include <stdint.h>

// #ifdef __cplusplus
// extern "C" {
// #endif

extern uint8_t HardwareVersionMajor  ;
extern uint8_t HardwareVersionMinor  ;
extern uint8_t HardwareVersionBugfix ;

extern String FirmwareVersion ;


// #ifdef __cplusplus
// } // extern "C"
// #endif

#endif

