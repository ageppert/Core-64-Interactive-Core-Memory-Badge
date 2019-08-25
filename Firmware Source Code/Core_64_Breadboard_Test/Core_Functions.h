/*
PURPOSE: Test the digital IO pins that are planned for addressing the core matrix with non-blocking code
SETUP:
- Configure in Digital_IO_Test.c
*/
 
#ifndef CORE_FUNCTIONS_H
#define CORE_FUNCTIONS_H

#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include <stdint.h>

//#ifdef __cplusplus
//extern "C" {
//#endif

extern bool CoreArrayMemory [8][8];

void CoreSetup();
void CoreUpdate();

//#ifdef __cplusplus
//} // extern "C"
//#endif

#endif
