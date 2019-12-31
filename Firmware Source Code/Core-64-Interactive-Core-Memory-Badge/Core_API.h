/*
PURPOSE: Get and set core values from the logical array as bits, bytes or long integers
SETUP:
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

//#ifdef __cplusplus
//} // extern "C"
//#endif

#endif // CORE_API_H
