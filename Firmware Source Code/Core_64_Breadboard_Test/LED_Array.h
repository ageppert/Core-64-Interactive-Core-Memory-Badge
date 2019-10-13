/*
PURPOSE: Set-up and update the NeoPixel Style LED Array with non-blocking code
SETUP:
- Configure in LED_Array.c
*/
 
#ifndef LED_ARRAY_H
#define LED_ARRAY_H

#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include <stdint.h>

//#ifdef __cplusplus
//extern "C" {
//#endif

void LEDArraySetup();
void LEDArrayUpdate();
void LEDArrayColorHSVUpdate();
extern void WriteColorFontSymbolToLEDArrayColorHSVMemory(uint8_t SymbolNumber);
void WriteCoreMemoryToMonochromeLEDArrayMemory();
void LEDArrayMonochromeUpdate();

//#ifdef __cplusplus
//} // extern "C"
//#endif

#endif
