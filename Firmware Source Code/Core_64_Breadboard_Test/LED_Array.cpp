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
bool    LEDArrayMonochromeMemory [8][8];
uint8_t LEDArrayColorHSVMemory [8][8];

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
// Read 64 bits of monochrome LED Array memory and update the LED Array
// Map LEDArrayMonochromeMemory to LEDArray layout, which requires a 90 CW rotation in V0.1
//
  void LEDArrayMonochromeUpdate() {
  
    for( uint8_t y = 0; y < kMatrixHeight; y++) 
    {
      for( uint8_t x = 0; x < kMatrixWidth; x++) 
      {
        // bool value = LEDArrayMonochromeMemory [x][y];
        bool value = LEDArrayMonochromeMemory [kMatrixHeight-1-y][x];  // Rotate LEDArrayMonochromeMemory 90 CW
        if (value != 0)
        {
          leds[ XY(x, y)]  = CHSV(LEDArrayMonochromeColorHSV[0],LEDArrayMonochromeColorHSV[1],LEDArrayMonochromeColorHSV[2]);
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
// Copy Core Memory Array bits into monochrome LED Array memory
//
  void WriteCoreMemoryToMonochromeLEDArrayMemory() {
    for( uint8_t y = 0; y < kMatrixHeight; y++) {
      for( uint8_t x = 0; x < kMatrixWidth; x++) {
        LEDArrayMonochromeMemory[x][y] = CoreArrayMemory[x][y];
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
        CoreArrayMemory[x][y] = ColorFontSymbols[0][x][y];
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
    // WriteCoreMemoryToMonochromeLEDArrayMemory();
    // LEDArrayMonochromeUpdate();
    // WriteColorFontSymbolToLEDArrayColorHSVMemory(2);
    // LEDArrayColorHSVUpdate();
  }
}
