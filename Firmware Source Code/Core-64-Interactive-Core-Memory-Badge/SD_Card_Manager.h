/*
PURPOSE: Set-up and manage SD Card that is attached to the MCU.
SETUP:
- Configure in 
*/
 
#ifndef SD_Card_Manager_H
#define SD_Card_Manager_H

#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif


//#ifdef __cplusplus
//extern "C" {
//#endif

// Used outside of this file 


// Prints setup message to serial port.
void SDCardSetup();

//#ifdef __cplusplus
//} // extern "C"
//#endif

#endif // SD_Card_Manager
