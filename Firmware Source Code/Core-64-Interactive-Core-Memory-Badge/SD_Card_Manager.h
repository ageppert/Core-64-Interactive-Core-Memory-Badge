/*
PURPOSE: Set-up and manage SD Card that is attached to the MCU.
SETUP:
- Configure in 
*/
 
#ifndef SD_Card_Manager_H
#define SD_Card_Manager_H

#include <stdint.h>
#include <stdbool.h>

#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif


//#ifdef __cplusplus
//extern "C" {
//#endif

// Used outside of this file 


// Prints setup messages to serial port.
void SDCardSetup();

// Creates or appends to existing voltage log file and adds a line, if it's time to update. User can change update period.
void SDCardVoltageLog(uint32_t UpdatePeriodms);


//#ifdef __cplusplus
//} // extern "C"
//#endif

#endif // SD_Card_Manager
