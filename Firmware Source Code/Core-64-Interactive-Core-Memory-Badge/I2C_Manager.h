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

//#ifdef __cplusplus
//extern "C" {
//#endif

void I2CManagerSetup();
void I2CManagerBusScan();

//#ifdef __cplusplus
//} // extern "C"
//#endif

#endif
