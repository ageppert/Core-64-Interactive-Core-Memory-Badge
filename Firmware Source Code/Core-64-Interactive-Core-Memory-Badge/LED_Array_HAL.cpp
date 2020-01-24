#include <stdint.h>
//#include <stdbool.h> // Not required because FastLED library redfines bool.
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "HardwareIOMap.h"
#include "Core_API.h"       // ToDo This core_api shouldn't be directly accessed from this files. interaction should be through higher level application
#include "CharacterMap.h"

#include "src/FastLED-3.3.2/FastLED.h" // https://github.com/FastLED 2019-08-25
#include "FastLED_Config.h" // Custom config file for FastLED library

#define MONOCHROMECOLORCHANGER 1

// LED Array Memory Buffers for user representations of the LED Array.
static bool LedArrayMemoryBinary [64];  // 0 is lower right (LSb), 63 is upper left (MSb), counting right to left, then up to the next row. Each row up is a higher Byte.
static bool LedArrayMemoryString [64];  // 0 is upper left, 63 is lower right, counting left to right, then down to next row
// static uint8_t LedArrayMemoryMatrix [8][8];  // order y,x : 0,0 is upper left, 7,7 is lower right, each pixel is a joint HSV color encoded in a Byte.
// Exception for HSV color encoding is 1 is interpreted as the monochrome color, which will be substituted. 0 is off. 

static bool LedScreenMemoryMonochrome2DImage [8][8];      // order y,x : 0,0 is upper left, 7,7 is lower right, counting left to right and top to bottom
// TODO
// Add LED color 1D array
// Add LED color 2D array
// Move usage of the two below, to the ones above, and get rid of these two.
static bool    LEDArrayMonochromeMemory [8][8];                        // In order of y,x position
uint8_t LEDArrayColorHSVMemory [8][8];

// Look up tables to translate the 1D and 2D user representations of the array to the LED positions used by the LED Array Driver, FastLED.
const uint8_t ScreenPixelPosition1DLUT [64] = { // Maps Screen Pixel Position to LED 1D array position.
  63,62,61,60,59,58,57,56, 
  48,49,50,51,52,53,54,55, 
  47,46,45,44,43,42,41,40,
  32,33,34,35,36,37,38,39,
  31,30,29,28,27,26,25,24,
  16,17,18,19,20,21,22,23,
  15,14,13,12,11,10, 9, 8,
   0, 1, 2, 3, 4, 5, 6, 7  
  };
const uint8_t ScreenPixelPosition2DLUT [8][8] = { // Maps Screen Pixel Position to LED 2D array position.
  {63,62,61,60,59,58,57,56}, 
  {48,49,50,51,52,53,54,55}, 
  {47,46,45,44,43,42,41,40},
  {32,33,34,35,36,37,38,39},
  {31,30,29,28,27,26,25,24},
  {16,17,18,19,20,21,22,23},
  {15,14,13,12,11,10, 9, 8},
  { 0, 1, 2, 3, 4, 5, 6, 7}  
  };

// Default monochrome color (OLED aqua)
uint8_t LEDArrayMonochromeColorHSV  [3] = {135,255,255};             // Hue, Saturation, Value. Allowable range 0-255.


void LED_Array_Init() {
  // These parameters are set in FastLED_Config.h and from HardwareIOMap.h
  FastLED.addLeds<CHIPSET, Pin_LED_Array, COLOR_ORDER>(leds, NUM_LEDS).setCorrection(TypicalSMD5050);
  FastLED.setBrightness( BRIGHTNESS );
}

void LED_Array_Memory_Clear() {
  for( uint8_t i = 0; i < NUM_LEDS; i++) {
    LedArrayMemoryBinary[i] = 0;
    LedArrayMemoryString[i] = 0;
  }
  for( uint8_t y = 0; y < kMatrixHeight; y++) 
  {
    for( uint8_t x = 0; x < kMatrixWidth; x++) 
    {
      LedScreenMemoryMonochrome2DImage[y][x] = 0;
    }
  }
}

void LED_Array_Monochrome_Set_Color(uint8_t hue, uint8_t saturation, uint8_t brightness) {
  LEDArrayMonochromeColorHSV[0] = hue;
  LEDArrayMonochromeColorHSV[1] = saturation;
  LEDArrayMonochromeColorHSV[2] = brightness;
}

uint16_t XY( uint8_t x, uint8_t y)
{
  uint16_t i;
  
  if( kMatrixSerpentineLayout == false) {
    i = (y * kMatrixWidth) + x;
  }

  if( kMatrixSerpentineLayout == true) {
    if( y & 0x01) {
      // Odd rows run backwards
      uint8_t reverseX = (kMatrixWidth - 1) - x;
      i = (y * kMatrixWidth) + reverseX;
    } else {
      // Even rows run forwards
      i = (y * kMatrixWidth) + x;
    }
  }
  
  return i;
}

uint16_t YX( uint8_t y, uint8_t x)
{
  uint16_t i;
  
  if( kMatrixSerpentineLayout == false) {
    i = (y * kMatrixWidth) + x;
  }

  if( kMatrixSerpentineLayout == true) {
    if( y & 0x01) {
      // Odd rows run backwards
      uint8_t reverseX = (kMatrixWidth - 1) - x;
      i = (y * kMatrixWidth) + reverseX;
    } else {
      // Even rows run forwards
      i = (y * kMatrixWidth) + x;
    }
  }
  
  return i;
}

uint16_t XYsafe( uint8_t x, uint8_t y)
{
  if( x >= kMatrixWidth) return -1;
  if( y >= kMatrixHeight) return -1;
  return XY(x,y);
}

void DrawOneFrame( byte startHue8, int8_t yHueDelta8, int8_t xHueDelta8)
{
  byte lineStartHue = startHue8;
  for( byte y = 0; y < kMatrixHeight; y++) {
    lineStartHue += yHueDelta8;
    byte pixelHue = lineStartHue;      
    for( byte x = 0; x < kMatrixWidth; x++) {
      pixelHue += xHueDelta8;
      leds[ XY(x, y)]  = CHSV( pixelHue, 255, 255);
    }
  }
}

void RainbowDemo() {
    uint32_t ms = millis();
    ms = (ms>>1) ; // Andy change, slow it down
    int32_t yHueDelta32 = ((int32_t)cos16( ms * (27/1) ) * (350 / kMatrixWidth));
    int32_t xHueDelta32 = ((int32_t)cos16( ms * (39/1) ) * (310 / kMatrixHeight));
    DrawOneFrame( ms / 65536, yHueDelta32 / 32768, xHueDelta32 / 32768);
    if( ms < 5000 ) {
      FastLED.setBrightness( scale8( BRIGHTNESS, (ms * 256) / 5000));
    } else {
      FastLED.setBrightness(BRIGHTNESS);
    }
    FastLED.show();
}

//
// Turn on one LED in the Array with X and Y coordinate
//
  void LEDArrayMonochromeOneOnMatrix(uint8_t x, uint8_t y) {
    leds[ XY(x, y)]  = CHSV(LEDArrayMonochromeColorHSV[0],LEDArrayMonochromeColorHSV[1],LEDArrayMonochromeColorHSV[2]);
    FastLED.show();
  }

//
// Turn on one LED in the Array with direct electrical string number position
//
  void LEDArrayMonochromeOneOnString(uint16_t i) {
    leds[i]  = CHSV(LEDArrayMonochromeColorHSV[0],LEDArrayMonochromeColorHSV[1],LEDArrayMonochromeColorHSV[2]);
    FastLED.show();
  }

//
// Read 64 bytes of Color HSV LED Array memory and update the LED Array
// Map LEDArrayColorHSVMemory to LEDArray layout, which requires a 90 CW rotation in V0.1 Hardware
//
  void LEDArrayColorHSVUpdate() {
    for( uint8_t y = 0; y < kMatrixHeight; y++) 
    {
      for( uint8_t x = 0; x < kMatrixWidth; x++) 
      {
        uint8_t value = LEDArrayColorHSVMemory [kMatrixHeight-1-y][x];  // Rotate LEDArrayMonochromeMemory 90 CW
        if (value != 0)
        {
          leds[ XY(x, y)]  = CHSV(value,255,255);
        }
        else
        {
          leds[ XY(x, y)]  = CHSV(0,0,0);
        }
      }
    }
    FastLED.show();
  }

//
// Write one bit into monochrome LED Array memory        ToDo: This may not be decoding to the right place in the LED array.
//
void WriteOneBitToMonochromeLEDArrayMemory(uint8_t bit, bool value) {
  if      (bit < 8 ) { LEDArrayMonochromeMemory [0] [ (bit+1 ) ] = value; }
  else if (bit < 16) { LEDArrayMonochromeMemory [1] [ (bit-8 ) ] = value; }
  else if (bit < 24) { LEDArrayMonochromeMemory [2] [ (bit-16) ] = value; }
  else if (bit < 32) { LEDArrayMonochromeMemory [3] [ (bit-24) ] = value; }
  else if (bit < 40) { LEDArrayMonochromeMemory [4] [ (bit-32) ] = value; }
  else if (bit < 48) { LEDArrayMonochromeMemory [5] [ (bit-40) ] = value; }
  else if (bit < 56) { LEDArrayMonochromeMemory [6] [ (bit-48) ] = value; }
  else if (bit < 64) { LEDArrayMonochromeMemory [7] [ (bit-56) ] = value; }
}

//
// Copy Core Memory Array bits into monochrome LED Array memory
//
  void CopyCoreMemoryToMonochromeLEDArrayMemory() {
    for( uint8_t y = 0; y < kMatrixHeight; y++) {
      for( uint8_t x = 0; x < kMatrixWidth; x++) {
        LEDArrayMonochromeMemory[y][x] = CoreArrayMemory[y][x];
        LedScreenMemoryMonochrome2DImage[y][x] = CoreArrayMemory[y][x];
      }
    }
  }

//
// Copy Color Font Symbol into monochrome LED Array memory
//
  void WriteCharacterMapToCoreMemoryArrayMemory() {
    for( uint8_t y = 0; y < kMatrixHeight; y++) 
    {
      for( uint8_t x = 0; x < kMatrixWidth; x++) 
      {
        CoreArrayMemory[y][x] = ColorFontSymbols[0][y][x];
      }
    }
  }

//
// Copy Color Font Symbol into Color HSV LED Array memory
//
  void WriteColorFontSymbolToLEDArrayColorHSVMemory(uint8_t SymbolNumber) {
    for( uint8_t y = 0; y < kMatrixHeight; y++) 
    {
      for( uint8_t x = 0; x < kMatrixWidth; x++) 
      {
        LEDArrayColorHSVMemory[x][y] = ColorFontSymbols[SymbolNumber][x][y];
      }
    }
  }

void LedScreenMemoryMonochrome2DImageWrite(uint8_t y, uint8_t x, bool value) {
  LedScreenMemoryMonochrome2DImage[y][x] = value;
}

void DisplayLedScreenMemoryMonochrome2DImage() {
  uint8_t LEDPixelPosition = 0;
  for( uint8_t y = 0; y < kMatrixHeight; y++) 
  {
    for( uint8_t x = 0; x < kMatrixWidth; x++) 
    {
      LEDPixelPosition = ScreenPixelPosition2DLUT [y][x];
      if ( LedScreenMemoryMonochrome2DImage [y][x] ) {
        leds[LEDPixelPosition] = CHSV(LEDArrayMonochromeColorHSV[0],LEDArrayMonochromeColorHSV[1],LEDArrayMonochromeColorHSV[2]);
      }
      else {
        leds[LEDPixelPosition] = 0;
      }
    }
  }
  FastLED.show();
}

void LedScreenMemoryMonochrome1DPixelStringWrite(uint8_t bit, bool value) {
  LedArrayMemoryString [bit] = value;
}

void DisplayLedScreenMonochrome1DPixelString() {
  uint8_t LEDPixelPosition = 0;
  for ( uint8_t ScreenPixel = 0; ScreenPixel < NUM_LEDS; ScreenPixel++ ) {
    // Convert from screen position to LED array position 
    LEDPixelPosition = ScreenPixelPosition1DLUT [ScreenPixel];
    // Turn on or off the corresponding LED
    if ( LedArrayMemoryString [ScreenPixel] ) {
      leds[LEDPixelPosition] = CHSV(LEDArrayMonochromeColorHSV[0],LEDArrayMonochromeColorHSV[1],LEDArrayMonochromeColorHSV[2]);
    }
    else {
      leds[LEDPixelPosition] = 0;
    }
  }
  FastLED.show();
}

void LED_Array_Test_Pixel_String() {
    static uint8_t stringPos = 0;
    static unsigned long StringUpdatePeriodms = 10;  
    static unsigned long StringNowTime = 0;
    static unsigned long StringUpdateTimer = 0;
    StringNowTime = millis();
    if ((StringNowTime - StringUpdateTimer) >= StringUpdatePeriodms)
    {
      StringUpdateTimer = StringNowTime;
      LED_Array_Memory_Clear();
      LedScreenMemoryMonochrome1DPixelStringWrite(stringPos, 1);
      DisplayLedScreenMonochrome1DPixelString();
      stringPos++;
      if (stringPos>63) {stringPos=0;}
      #ifdef MONOCHROMECOLORCHANGER
        static uint8_t MonochromeColorChange = 0;
        LED_Array_Monochrome_Set_Color(MonochromeColorChange, 255, 255);
        MonochromeColorChange ++;
      #endif
    }
}

// Turns on 1 pixel, sequentially, from left to right, top to bottom using 2D matrix addressing
// Cycles through LEDs first in row 0, by X 0 to 7, then row 1, and so on. Ends at X and Y 7.
void LED_Array_Test_Pixel_Matrix() {
    static uint8_t x = 0;
    static uint8_t y = 0;
    static unsigned long UpdatePeriodms = 50;  
    static unsigned long NowTime = 0;
    static unsigned long UpdateTimer = 0;
    NowTime = millis();
    if ((NowTime - UpdateTimer) >= UpdatePeriodms)
    {
      UpdateTimer = NowTime;
      LED_Array_Memory_Clear();
      //LedScreenMemoryMonochrome2DImageClear();
      LedScreenMemoryMonochrome2DImageWrite(y, x, 1);
      DisplayLedScreenMemoryMonochrome2DImage();
      x++;
      if (x==8) {x=0; y++;}
      if (y==8) {y=0;}    
      #ifdef MONOCHROMECOLORCHANGER
        static uint8_t MonochromeColorChange = 0;
        LED_Array_Monochrome_Set_Color(MonochromeColorChange, 255, 255);
        MonochromeColorChange ++;
      #endif
    }
}
