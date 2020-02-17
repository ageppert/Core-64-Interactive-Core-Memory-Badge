/*
PURPOSE: Get and set core values from the logical array as bits, bytes or long integers
SETUP:
PURPOSE: Test the digital IO pins that are planned for addressing the core matrix with non-blocking code
SETUP:
- Configure in Digital_IO_Test.c
*/
 
#pragma once

#ifndef CORE_API_H
#define CORE_API_H

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

extern bool CoreArrayMemory [8][8];


// API Command List
extern void CoreSetup();
extern void CoreClearAll();
extern void CoreSetAll();
extern void CoreWriteBit(uint8_t bit, bool value);
extern bool CoreReadBit(uint8_t bit);
extern void CoreWriteLongInt(uint64_t value);
extern uint64_t CoreReadLongInt();
extern void CoreWriteArray(); 		// TO DO Add a pointer to the array
extern uint64_t CoreReadArray(); 	// TO DO Add a pointer to the array
void ScrollTextToCoreMemory();
extern void WriteOneBitToCoreMemory(uint8_t bit, bool value);

void CoreZeroSet();
void CoreZeroClear();
void CoreOneSet();
void CoreOneClear();


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

#endif // CORE_API_H
