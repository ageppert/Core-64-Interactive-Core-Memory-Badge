#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "HardwareIOMap.h"
#include "Core_API.h"
#include "CharacterMap.h"
//#include <FastLED.h>          // See File/Examples/FastLED/XYMAtrix
#include "src/FastLED-3.3.2/FastLED.h" // https://github.com/FastLED 2019-08-25
#define COLOR_ORDER GRB
#define CHIPSET     WS2812B
#define BRIGHTNESS 3

const uint8_t kMatrixWidth = 8;
const uint8_t kMatrixHeight = 8;
const bool    kMatrixSerpentineLayout = true;
  //Red (0..) "HUE_RED"
  //Orange (32..) "HUE_ORANGE"
  //Yellow (64..) "HUE_YELLOW"
  //Green (96..) "HUE_GREEN"
  //Aqua (128..) "HUE_AQUA"
  //Blue (160..) "HUE_BLUE"
  //Purple (192..) "HUE_PURPLE"
  //Pink(224..) "HUE_PINK"  
uint8_t LEDArrayMonochromeColorHSV  [3] = {135,255,255};             // Hue, Saturation, Value. Allowable range 0-255.
static bool    LEDArrayMonochromeMemory [8][8];                        // In order of y,x position
static bool    LedScreenMemoryMonochrome2DImage [8][8];      // 0,0 is upper left, 7,7 is lower right, counting left to right and top to bottom
static bool    LedScreenMemoryMonochrome1DPixelString [64];      // 0 is upper left, 63 is lower right, counting left to right and top to bottom
uint8_t LEDArrayColorHSVMemory [8][8];
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

#define NUM_LEDS (kMatrixWidth * kMatrixHeight)
CRGB leds_plus_safety_pixel[ NUM_LEDS + 1];
CRGB* const leds( leds_plus_safety_pixel + 1);

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

// Deprecated
// Read 64 bits of monochrome LED Screen memory and update the LED Array
// Map LEDArrayMonochromeMemory to LEDArray layout, which requires a 90 CW rotation in V0.1
//
//  void LEDArrayMonochromeUpdate() {
//  
//    for( uint8_t y = 0; y < kMatrixHeight; y++) 
//    {
//      for( uint8_t x = 0; x < kMatrixWidth; x++) 
//      {
//        // bool value = LEDArrayMonochromeMemory [y][x];
//        bool value = LEDArrayMonochromeMemory [kMatrixHeight-1-y][x];  // Rotate LEDArrayMonochromeMemory 90 CW
//        if (value != 0)
//        {
//          leds[ XY(x, y)]  = CHSV(LEDArrayMonochromeColorHSV[0],LEDArrayMonochromeColorHSV[1],LEDArrayMonochromeColorHSV[2]);
//        }
//        else
//        {
//          leds[ XY(x, y)]  = CHSV(0,0,0);
//        }
//      }
//    }
//    FastLED.show();
//  }

// depracated
// Clear the LED Array
//
//  void LEDArrayMonochromeAllOff() {
//    for(uint8_t i = 0; i < NUM_LEDS; i++) {leds[i] = CHSV(0,0,0);}
//    FastLED.show();
//  }

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
// Copy Core Memory Array bits into monochrome LED Array memory
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

void LEDArraySetup() {
  FastLED.addLeds<CHIPSET, Pin_LED_Array, COLOR_ORDER>(leds, NUM_LEDS).setCorrection(TypicalSMD5050);
  FastLED.setBrightness( BRIGHTNESS );
}

void LEDArrayUpdate() {
  static uint32_t NowTimems = 0;
  static uint32_t LEDArrayUpdateTimerms = 0;
  static uint32_t LEDArrayUpdatePeriodms = 1000; // ms
  NowTimems = millis();
  if ((NowTimems - LEDArrayUpdateTimerms) >= LEDArrayUpdatePeriodms)
  {
    LEDArrayUpdateTimerms = NowTimems;
    // WriteCharacterMapToCoreMemoryArrayMemory();
    // CopyCoreMemoryToMonochromeLEDArrayMemory();
    // LEDArrayMonochromeUpdate();
    // WriteColorFontSymbolToLEDArrayColorHSVMemory(2);
    // LEDArrayColorHSVUpdate();
  }
}


void LedScreenMemoryMonochrome2DImageClear() {
  for( uint8_t y = 0; y < kMatrixHeight; y++) 
  {
    for( uint8_t x = 0; x < kMatrixWidth; x++) 
    {
      LedScreenMemoryMonochrome2DImage[x][y] = 0;
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


void LedScreenMemoryMonochrome1DPixelStringClear() {
  for ( uint8_t bit = 0; bit < NUM_LEDS; bit++ ) { LedScreenMemoryMonochrome1DPixelString [bit] = 0; }
}

void LedScreenMemoryMonochrome1DPixelStringWrite(uint8_t bit, bool value) {
  LedScreenMemoryMonochrome1DPixelString [bit] = value;
}

void DisplayLedScreenMonochrome1DPixelString() {
  uint8_t LEDPixelPosition = 0;
  for ( uint8_t ScreenPixel = 0; ScreenPixel < NUM_LEDS; ScreenPixel++ ) {
    // Convert from screen position to LED array position 
    LEDPixelPosition = ScreenPixelPosition1DLUT [ScreenPixel];
    // Turn on or off the corresponding LED
    if ( LedScreenMemoryMonochrome1DPixelString [ScreenPixel] ) {
      leds[LEDPixelPosition] = CHSV(LEDArrayMonochromeColorHSV[0],LEDArrayMonochromeColorHSV[1],LEDArrayMonochromeColorHSV[2]);
    }
    else {
      leds[LEDPixelPosition] = 0;
    }
  }
  FastLED.show();
}

