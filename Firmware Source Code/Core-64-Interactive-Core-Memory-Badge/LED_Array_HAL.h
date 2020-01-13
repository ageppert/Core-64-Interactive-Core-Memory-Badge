/*
PURPOSE: Set-up and update the NeoPixel Style LED Array with non-blocking code through abstract memory buffers.
SETUP: Configure in FastLED_Config.h
USAGE: Init, Clear, Write to one of the buffers in monochrome or color mode, update the LED array.
*/
 
#ifndef LED_ARRAY_HAL_H
#define LED_ARRAY_HAL_H

#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include <stdint.h>

//#ifdef __cplusplus
//extern "C" {
//#endif

// Updated 2019-01-11 for HAL over Driver architecture
// The API for the LED Array HAL
void LED_Array_Init();				// Sets up the LED array with the driver using chipset, data pin, color order, correction, brightness from FastLED_Config.h 
void LED_Array_Memory_Clear(); 		// Clears all of the LED Array memory buffers.

// New proven functions 2019-01-01
extern void LedScreenMemoryMonochrome2DImageWrite(uint8_t y, uint8_t x, bool value);
void DisplayLedScreenMemoryMonochrome2DImage();

extern void LedScreenMemoryMonochrome1DPixelStringWrite(uint8_t bit, bool value);
void DisplayLedScreenMonochrome1DPixelString();

// Older stuff that needs cleanup
void LEDArrayUpdate();
void LEDArrayColorHSVUpdate();
extern void WriteColorFontSymbolToLEDArrayColorHSVMemory(uint8_t SymbolNumber);
extern void WriteOneBitToMonochromeLEDArrayMemory(uint8_t bit, bool value);
void CopyCoreMemoryToMonochromeLEDArrayMemory();
// void LEDArrayMonochromeUpdate(); // deprecated
// void LEDArrayMonochromeAllOff(); // depracated
extern void LEDArrayMonochromeOneOnMatrix(uint8_t x, uint8_t y);
extern void LEDArrayMonochromeOneOnString(uint16_t i);

//#ifdef __cplusplus
//} // extern "C"
//#endif

#endif
