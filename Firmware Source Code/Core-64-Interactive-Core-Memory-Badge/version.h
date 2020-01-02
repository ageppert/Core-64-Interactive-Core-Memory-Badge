/*
	PURPOSE: Define the version number and scheme
	SETUP: manually update the field assigned as VERSION
*/

/*	VERSION SCHEME
	major.minor.date-iteration
	major.minor is locked to hardware version
	date is last two digits of year, two digit month, two digit date
	iteration increments from build to build
*/

// TO DO: connect version number to a value that the firmware can interact with and display.

#define HARDWARE_VERSION  " 0.1"   		// First prototypes (green board) are V0.1
#define FIRMWARE_VERSION  "200101-02"   // Working on basic functionality of all connected hardware.

const String FirmwareVersion = FIRMWARE_VERSION;
const String HardwareVersion = HARDWARE_VERSION;
