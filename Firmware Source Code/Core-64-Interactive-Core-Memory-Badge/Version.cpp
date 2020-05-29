#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "Version.H"

uint8_t HardwareVersionMajor  = 0;  // Default
uint8_t HardwareVersionMinor  = 2;  // Default
uint8_t HardwareVersionBugfix = 0;  // Default

/* 
 * V0.1 the first batch of 5 prototype green boards. 
 * V0.2 hand re-worked updates on V0.1 for first bring-up.
 * V0.3 the dual red boards
*/

String FirmwareVersion = "200529" ;  // Adding I2C bus scan at start-up and hardware version detection.
