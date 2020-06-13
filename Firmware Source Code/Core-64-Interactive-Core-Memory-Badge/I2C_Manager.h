/*
PURPOSE: Set-up and manage I2C hardware that is attached to the MCU.
SETUP:
- Configure in 
*/
 
#ifndef I2C_MANAGER_H
#define I2C_MANAGER_H

#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include <stdint.h>
#include <stdbool.h>
#include <Adafruit_MCP23017.h>  // IOE = IO Expander

//#ifdef __cplusplus
//extern "C" {
//#endif

// Used outside of this file 
extern Adafruit_MCP23017 IOE38CoresOnly;         // Decimal ID 38, 16 of 20 core array drive transistors.
extern Adafruit_MCP23017 IOE39CoresSenseHalls;   // Decimal ID 39, 4 core array drive transistors, hall switches, sense, spare

// Prints setup message to serial port.
void I2CManagerSetup();
// Scans all 7-bit addresses on the bus. Prints devices that are present to serial port.
void I2CManagerBusScan();
// Call with expected address of external EEPROM, returns 1 if present, 0 if not.
bool I2CDetectExternalEEPROM(uint8_t address);		
// IO Expander Scan Inputs and report state with serial
void I2CIOEScan();
// IO Expander Safe Input to default both chips, all pins, input.
void I2CIOESafeInput();

//#ifdef __cplusplus
//} // extern "C"
//#endif

#endif
