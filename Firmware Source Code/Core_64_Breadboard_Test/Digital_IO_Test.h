/*
PURPOSE: Test the digital IO pins that are planned for addressing the core matrix with non-blocking code
SETUP:
- Configure in Digital_IO_Test.c
*/
 
#ifndef DIGITAL_IO_TEST_H
#define DIGITAL_IO_TEST_H

#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include <stdint.h>

//#ifdef __cplusplus
//extern "C" {
//#endif

void DigitalIOSetup();
void DigitalIOUpdate();

//#ifdef __cplusplus
//} // extern "C"
//#endif

#endif
