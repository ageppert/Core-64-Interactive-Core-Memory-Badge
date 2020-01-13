/*
PURPOSE: Configure the NeoPixel Style LED Array for the FastLED library
*/
 
#ifndef FASTLED_CONFIG_H
#define OFASTLED_CONFIG_H

#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include <stdint.h>

//#ifdef __cplusplus
//extern "C" {
//#endif

#define COLOR_ORDER GRB
#define CHIPSET     WS2812B
#define BRIGHTNESS 3

const uint8_t kMatrixWidth = 8;
const uint8_t kMatrixHeight = 8;
const bool    kMatrixSerpentineLayout = true;

#define NUM_LEDS (kMatrixWidth * kMatrixHeight)
CRGB leds_plus_safety_pixel[ NUM_LEDS + 1];
CRGB* const leds( leds_plus_safety_pixel + 1);

//#ifdef __cplusplus
//} // extern "C"
//#endif

#endif