#include <stdint.h>
//#include <stdbool.h> // Not required because FastLED library redfines bool.
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "HardwareIOMap.h"
#include "Core_HAL.h"       // ToDo This core_api shouldn't be directly accessed from this files. interaction should be through higher level application
#include "CharacterMap.h"
#include "Ambient_Light_Sensor.h"

#define FASTLED_ALLOW_INTERRUPTS 0    // include before #include FastLED.h to disable inetrrupts during writes.
#include <FastLED.h>
#include "FastLED_Config.h"           // Core 64 Custom config file for FastLED library

// FastLED.show() takes a little less than 2ms (measured) to update 64 LEDs. Good to have it delay 1/2 ms after core matrix twiddles the data pin.

#define MONOCHROMECOLORCHANGER 1

// LED Array Memory Buffers for user representations of the LED Array.
// Interaction with the abstract memory buffers which define the LED Array for the user to view:
// BINARY [64 bit data word, monochrome]
  // 0 is lower right (LSb), 63 is upper left (MSb), counting right to left, then up to the next row. Each row up is a higher Byte.
  static uint64_t LedArrayMemoryBinary = 0;
  static uint64_t LedArrayMemoryBinaryDefault = 0xDEADBEEFC0D3C4FE; // 0x8142241818244281; // "X" //  0xDEADBEEF and 0xC0D3C4FE
// STRING [1D 64 pixel string, monochrome]
  // 0 is upper left, 63 is lower right, counting left to right, then down to next row
  static bool LedArrayMemoryString [64];  
// MATRIX MONOCHROME [2D 8x8 pixel matrix, monochrome]
  // order y,x : 0,0 is upper left, 7,7 is lower right, counting left to right and top to bottom.
  static bool LedScreenMemoryMatrixMono [8][8];      
// MATRIX COLOR [2D 8x8 pixel matrix, 1 byte HUE in HSV color space]
  // order y,x : 0,0 is upper left, 7,7 is lower right, counting left to right and top to bottom.
  // Exception for HSV color encoding is 0 is interpreted as off, which will be substituted when displayed.
  static uint8_t LedScreenMemoryMatrixColor [8][8];

#ifdef CORE64_LED_MATRIX  // For Core64 LED Matrix layout (consecutive rows)
  // Look up tables to translate the 1D and 2D user representations of the array to the LED positions used by the LED Array Driver, FastLED.
  const uint8_t ScreenPixelPositionBinaryLUT [64] = { // Maps Screen Pixel Position to LED Binary Display position.
    56,57,58,59,60,61,62,63, 
    48,49,50,51,52,53,54,55, 
    40,41,42,43,44,45,46,47,
    32,33,34,35,36,37,38,39,
    24,25,26,27,28,29,30,31,
    16,17,18,19,20,21,22,23,
     8, 9,10,11,12,13,14,15,
     0, 1, 2, 3, 4, 5, 6, 7  
    };
  const uint8_t ScreenPixelPosition1DLUT [64] = { // Maps Screen Pixel Position to LED 1D array position.
     0, 1, 2, 3, 4, 5, 6, 7,
     8, 9,10,11,12,13,14,15,
    16,17,18,19,20,21,22,23,
    24,25,26,27,28,29,30,31,
    32,33,34,35,36,37,38,39,
    40,41,42,43,44,45,46,47,
    48,49,50,51,52,53,54,55,
    56,57,58,59,60,61,62,63
    };
  const uint8_t ScreenPixelPosition2DLUT [8][8] = { // Maps Screen Pixel Position to LED 2D array position.
    { 0, 1, 2, 3, 4, 5, 6, 7},
    { 8, 9,10,11,12,13,14,15},
    {16,17,18,19,20,21,22,23},
    {24,25,26,27,28,29,30,31},
    {32,33,34,35,36,37,38,39},
    {40,41,42,43,44,45,46,47},
    {48,49,50,51,52,53,54,55},
    {56,57,58,59,60,61,62,63}
    };
#else // For Pimoroni Unicorn Hat layout (serpentine)
  // Look up tables to translate the 1D and 2D user representations of the array to the LED positions used by the LED Array Driver, FastLED.
  const uint8_t ScreenPixelPositionBinaryLUT [64] = { // Maps Screen Pixel Position to LED Binary Display position.
    63,62,61,60,59,58,57,56, 
    48,49,50,51,52,53,54,55, 
    47,46,45,44,43,42,41,40,
    32,33,34,35,36,37,38,39,
    31,30,29,28,27,26,25,24,
    16,17,18,19,20,21,22,23,
    15,14,13,12,11,10, 9, 8,
     0, 1, 2, 3, 4, 5, 6, 7  
    };
  const uint8_t ScreenPixelPosition1DLUT [64] = { // Maps Screen Pixel Position to LED 1D array position.
     7, 6, 5, 4, 3, 2, 1, 0,
     8, 9,10,11,12,13,14,15,
    23,22,21,20,19,18,17,16,
    24,25,26,27,28,29,30,31,
    39,38,37,36,35,34,33,32,
    40,41,42,43,44,45,46,47,
    55,54,53,52,51,50,49,48,
    56,57,58,59,60,61,62,63
    };
  const uint8_t ScreenPixelPosition2DLUT [8][8] = { // Maps Screen Pixel Position to LED 2D array position.
    { 7, 6, 5, 4, 3, 2, 1, 0},
    { 8, 9,10,11,12,13,14,15},
    {23,22,21,20,19,18,17,16},
    {24,25,26,27,28,29,30,31},
    {39,38,37,36,35,34,33,32},
    {40,41,42,43,44,45,46,47},
    {55,54,53,52,51,50,49,48},
    {56,57,58,59,60,61,62,63}
    };
#endif

// Default monochrome color (135,255,255 = OLED aqua)
uint8_t LEDArrayMonochromeColorHSV  [3] = {DEFAULTLEDArrayMonochromeColorH,DEFAULTLEDArrayMonochromeColorS,DEFAULTLEDArrayMonochromeColorV};             // Hue, Saturation, Value. Allowable range 0-255.
uint8_t LEDArrayBrightness = BRIGHTNESS;

void LED_Array_Auto_Brightness() {
  if( (HardwareVersionMinor==4) || (HardwareVersionMinor == 5) )
    {
      if(AmbientLightAvaible()==0) {LEDArrayBrightness = BRIGHTNESS;}
      else {LEDArrayBrightness = GetAmbientLightLevel8BIT();}
      if(LEDArrayBrightness < BRIGHTNESS_MIN) {LEDArrayBrightness = BRIGHTNESS_MIN;}
      if(LEDArrayBrightness > BRIGHTNESS_MAX) {LEDArrayBrightness = BRIGHTNESS_MAX;}
      FastLED.setBrightness( LEDArrayBrightness );
      // Serial.println(LEDArrayBrightness);
    }
}

void LED_Array_Memory_Clear() {
  LedArrayMemoryBinary = 0;
  for( uint8_t i = 0; i < NUM_LEDS; i++) {
    LedArrayMemoryString[i] = 0;
  }
  for( uint8_t y = 0; y < kMatrixHeight; y++) 
  {
    for( uint8_t x = 0; x < kMatrixWidth; x++) 
    {
      LedScreenMemoryMatrixMono[y][x] = 0;
      LedScreenMemoryMatrixColor[y][x] = 0;
    }
  }
}

void LED_Array_Monochrome_Set_Color(uint8_t hue, uint8_t saturation, uint8_t value) {
  LEDArrayMonochromeColorHSV[0] = hue;
  LEDArrayMonochromeColorHSV[1] = saturation;
  LEDArrayMonochromeColorHSV[2] = value;
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

void LED_Array_Test_Rainbow_Demo() {
    uint32_t ms = millis();
    ms = (ms>>8) ; // Andy change, slow it down
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
// Copy Core Memory Array bits into monochrome LED Array memory
//
  void CopyCoreMemoryToMonochromeLEDArrayMemory() {
    for( uint8_t y = 0; y < kMatrixHeight; y++) {
      for( uint8_t x = 0; x < kMatrixWidth; x++) {
        LedScreenMemoryMatrixMono[y][x] = CoreArrayMemory[y][x];
        LedScreenMemoryMatrixMono[y][x] = CoreArrayMemory[y][x];
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
  void WriteColorFontSymbolToLedScreenMemoryMatrixColor(uint8_t SymbolNumber) {
    for( uint8_t y = 0; y < kMatrixHeight; y++) 
    {
      for( uint8_t x = 0; x < kMatrixWidth; x++) 
      {
        LedScreenMemoryMatrixColor[y][x] = ColorFontSymbols[SymbolNumber][y][x];
      }
    }
  }

//
// Write one bit into monochrome LED Array memory
//
void LED_Array_Matrix_Mono_Write(uint8_t y, uint8_t x, bool value) {
  LedScreenMemoryMatrixMono[y][x] = value;
}

//
// Read one bit from monochrome LED Array memory
//
bool LED_Array_Matrix_Mono_Read(uint8_t y, uint8_t x) {
  return (LedScreenMemoryMatrixMono[y][x]);
}

//
// Write one COLOR bit into color LED Array memory
//
void LED_Array_Matrix_Color_Write(uint8_t y, uint8_t x, uint8_t hue) {
  LedScreenMemoryMatrixColor[y][x] = hue;
}


void LED_Array_Matrix_Mono_Display() {
  uint8_t LEDPixelPosition = 0;
  for( uint8_t y = 0; y < kMatrixHeight; y++) 
  {
    for( uint8_t x = 0; x < kMatrixWidth; x++) 
    {
      LEDPixelPosition = ScreenPixelPosition2DLUT [y][x];
      if ( LedScreenMemoryMatrixMono [y][x] ) {
        leds[LEDPixelPosition] = CHSV(LEDArrayMonochromeColorHSV[0],LEDArrayMonochromeColorHSV[1],LEDArrayMonochromeColorHSV[2]);
      }
      else {
        leds[LEDPixelPosition] = 0;
      }
    }
  }
  LED_Array_Auto_Brightness();
  FastLED.show();
}

void LED_Array_Matrix_Color_Display() {
  uint8_t LEDPixelPosition = 0;
  for( uint8_t y = 0; y < kMatrixHeight; y++) 
  {
    for( uint8_t x = 0; x < kMatrixWidth; x++) 
    {
      LEDPixelPosition = ScreenPixelPosition2DLUT [y][x];
      leds[LEDPixelPosition] = CHSV(LedScreenMemoryMatrixColor [y][x],LEDArrayMonochromeColorHSV[1],LEDArrayMonochromeColorHSV[2]);
      // Exception is color of 0 which is implemented as pixel OFF, and not the 0 color in HSV space.
      if(LedScreenMemoryMatrixColor [y][x]==0)
      {
        leds[LEDPixelPosition] = CHSV(0,0,0);
      }
    }
  }
  LED_Array_Auto_Brightness();
  FastLED.show();
}

void LED_Array_Binary_Display() {
  uint8_t LEDPixelPosition = 0;
  for ( uint8_t ScreenPixel = 0; ScreenPixel < NUM_LEDS; ScreenPixel++ ) {
    // Convert from screen position to LED array position 
    LEDPixelPosition = ScreenPixelPositionBinaryLUT [ScreenPixel];
    // Turn on or off the corresponding LED
    bool bitval = (LedArrayMemoryBinary >> ScreenPixel) & 0x0000000000000001 ;
    if ( bitval ) {
      leds[LEDPixelPosition] = CHSV(LEDArrayMonochromeColorHSV[0],LEDArrayMonochromeColorHSV[1],LEDArrayMonochromeColorHSV[2]);
    }
    else {
      leds[LEDPixelPosition] = 0;
    }
  }
  LED_Array_Auto_Brightness();
  FastLED.show();
}

void LED_Array_Binary_Write(uint64_t BinaryValue){
  LedArrayMemoryBinary = BinaryValue;
}

uint64_t LED_Array_Binary_Read(){
  return (LedArrayMemoryBinary);
}

void LED_Array_String_Write(uint8_t bit, bool value) {
  LedArrayMemoryString [bit] = value;
}

void LED_Array_String_Display() {
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
  LED_Array_Auto_Brightness();
  FastLED.show();
}

void LED_Array_Binary_Write_Default() {
  LedArrayMemoryBinary = LedArrayMemoryBinaryDefault;
}

void LED_Array_Binary_To_Matrix_Mono() {        // TO DO: There is something wrong with Bit 31 (4,0) math because it is always set on if anything above it is on
  bool bitValue;
  uint8_t pixelPosition;
  uint8_t bitPosition = 0;
  uint64_t testValue;
  for( uint8_t y = 0; y < kMatrixHeight; y++) 
  {
    for( uint8_t x = 0; x < kMatrixWidth; x++) 
    {
      pixelPosition = (y*8)+x; // row 0, column 0: 0 * 8 + 0 = 0
      bitPosition = 63 - pixelPosition; // Bit position 0 is lower right, Pixel position 0 (or 0,0) is upper left
      //if (bitPosition < 32)
      if (pixelPosition > 31)
      {
        testValue = 1 << bitPosition;       // This "1 << bitPosition" doesn't work beyond 32 bits in Arduino-land...
        bitValue = (LedArrayMemoryBinary & testValue);
        // TO DO: For bit 31 (4,0) the bitValue above calculates to 1 if anything above bit position 31 is set, even if 31 is zero.
        // So I added this special case handling. Need to figure out what is going wrong when 1<<31 should be 0b1000000000000000
        if ((y==4)&&(x==0)) {bitValue = (LedArrayMemoryBinary & 0b1000000000000000);}
      }
      else
      {
        testValue = 1 << (bitPosition-32);  // ...so the functionality is split at the 32 bit line...
        bitValue = ( (LedArrayMemoryBinary>>32) & testValue); // ...and it turns out >>32 shift works on a 64 bit number
      }
      LED_Array_Matrix_Mono_Write(y, x, bitValue);
    }
  }
}

void LED_Array_Matrix_Mono_to_Binary() {        
  uint64_t bitValue;
  uint8_t pixelPosition;
  uint8_t bitPosition = 0;
  for( uint8_t y = 0; y < kMatrixHeight; y++) 
  {
    for( uint8_t x = 0; x < kMatrixWidth; x++) 
    {
      pixelPosition = (y*8)+x; // row 0, column 0: 0 * 8 + 0 = 0
      bitPosition = 63 - pixelPosition; // Bit position 0 is lower right, Pixel position 0 (or 0,0) is upper left
      bitValue = LED_Array_Matrix_Mono_Read(y, x);
      LedArrayMemoryBinary = (LedArrayMemoryBinary | (bitValue <<bitPosition));
    }
  }
}


void LED_Array_Test_Count_Binary() {
    static uint64_t BinaryValue = 0; // Tested to see what happens after 32 bits and 63 bits and it rolls over as expected.
    LED_Array_Monochrome_Set_Color(135,255,255);
    LED_Array_Memory_Clear();
    LED_Array_Binary_Write(BinaryValue);
    LED_Array_Binary_Display();
    BinaryValue++;
}

void LED_Array_Test_Pixel_String() {
    static uint8_t stringPos = 0;
    static unsigned long StringUpdatePeriodms = 50;  
    static unsigned long StringNowTime = 0;
    static unsigned long StringUpdateTimer = 0;
    StringNowTime = millis();
    if ((StringNowTime - StringUpdateTimer) >= StringUpdatePeriodms)
    {
      StringUpdateTimer = StringNowTime;
      LED_Array_Memory_Clear();
      LED_Array_String_Write(stringPos, 1);
      LED_Array_String_Display();
      stringPos++;
      if (stringPos>63) {stringPos=0;}
      #ifdef MONOCHROMECOLORCHANGER
        static uint8_t MonochromeColorChange = 0;
        LED_Array_Monochrome_Set_Color(MonochromeColorChange, 255, 255);
        MonochromeColorChange ++;
      #endif
    }
}


void LED_Array_Test_Pixel_Matrix_Mono() {
    static uint8_t Sequence = 0;
    static bool SequenceUpnDown = 1;
    static unsigned long UpdatePeriodms = 100;  
    static unsigned long NowTime = 0;
    static unsigned long UpdateTimer = 0;
    NowTime = millis();
    if ((NowTime - UpdateTimer) >= UpdatePeriodms)
    {
      UpdateTimer = NowTime;
      LED_Array_Memory_Clear();
        for(uint8_t y=0; y<8; y++)
          { 
          if(y == Sequence)
            {
            for(uint8_t x=0; x<8; x++)
              {
              LED_Array_Matrix_Mono_Write(Sequence, x, 1);
              }
            }
            LED_Array_Matrix_Mono_Write(y, Sequence, 1);
          }
      // LED_Array_Matrix_Mono_Write(1, 1, 1); // works
      LED_Array_Matrix_Mono_Display();
      if (SequenceUpnDown)
      {
        Sequence++;
        if (Sequence==8)
        {
          SequenceUpnDown=0;
          Sequence=6;
        } 
      }
      else
      {
        Sequence--;
        if (Sequence==255)
        {
          SequenceUpnDown=1;
          Sequence=1;
        } 
      }
      #ifdef MONOCHROMECOLORCHANGER
        static uint8_t MonochromeColorChange = 0;
        LED_Array_Monochrome_Set_Color(MonochromeColorChange, 255, 255);
        MonochromeColorChange ++;
      #endif
   }
 }

// Cycles through available multi-color font symbols
void LED_Array_Test_Pixel_Matrix_Color() {
    static uint8_t FontSymbolNumber = 0;
    static unsigned long UpdatePeriodms = 1000;  
    static unsigned long NowTime = 0;
    static unsigned long UpdateTimer = 0;
    NowTime = millis();
    if ((NowTime - UpdateTimer) >= UpdatePeriodms)
    {
      UpdateTimer = NowTime;
      LED_Array_Memory_Clear();
      WriteColorFontSymbolToLedScreenMemoryMatrixColor(FontSymbolNumber);
      LED_Array_Matrix_Color_Display();
      FontSymbolNumber++;
      if(FontSymbolNumber==4){FontSymbolNumber=0;}
    }
}

void LED_Array_Init() {
  // These parameters are set in FastLED_Config.h and from HardwareIOMap.h
  FastLED.addLeds<CHIPSET, Pin_RGB_LED_Array, COLOR_ORDER>(leds, NUM_LEDS).setCorrection(TypicalSMD5050);
  FastLED.setBrightness( BRIGHTNESS );
  LED_Array_Memory_Clear();
  delay(25);
  LED_Array_Matrix_Mono_Display();
  LED_Array_Matrix_Color_Display();
}
