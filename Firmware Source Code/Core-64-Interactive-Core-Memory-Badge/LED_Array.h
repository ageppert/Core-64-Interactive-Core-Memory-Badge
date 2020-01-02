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
extern void WriteOneBitToMonochromeLEDArrayMemory(uint8_t bit, bool value);
void CopyCoreMemoryToMonochromeLEDArrayMemory();
// void LEDArrayMonochromeUpdate(); // deprecated
// void LEDArrayMonochromeAllOff(); // depracated
extern void LEDArrayMonochromeOneOnMatrix(uint8_t x, uint8_t y);
extern void LEDArrayMonochromeOneOnString(uint16_t i);

// New proven functions 2019-01-01
void LedScreenMemoryMonochrome2DImageClear();
extern void LedScreenMemoryMonochrome2DImageWrite(uint8_t y, uint8_t x, bool value);
void DisplayLedScreenMemoryMonochrome2DImage();

void LedScreenMemoryMonochrome1DPixelStringClear();
extern void LedScreenMemoryMonochrome1DPixelStringWrite(uint8_t bit, bool value);
void DisplayLedScreenMonochrome1DPixelString();

//#ifdef __cplusplus
//} // extern "C"
//#endif

#endif
