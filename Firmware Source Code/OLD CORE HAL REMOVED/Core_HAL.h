/*
PURPOSE: Test the digital IO pins that are planned for addressing the core matrix with non-blocking code
SETUP:
- Configure in Digital_IO_Test.c
*/
 
#ifndef CORE_HAL_H
#define CORE_HAL_H

#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include <stdint.h>
#include <stdbool.h>

//#ifdef __cplusplus
//extern "C" {
//#endif

void AllDriveIoSafe();
void AllDriveIoReadAndStore();
void AllDriveIoRecallAndWrite();
extern void AllDriveIoSetBit(uint8_t bit);
extern void AllDriveIoClearBit(uint8_t bit);
void AllDriveIoEnable();
void AllDriveIoDisable();
extern bool CoreStateChangeFlag(bool clearFlag);

extern void TracingPulses(uint8_t numberOfPulses);
void DebugWithReedSwitchOutput();
void DebugWithReedSwitchInput();

//#ifdef __cplusplus
//} // extern "C"
//#endif

#endif // CORE_HAL_H
