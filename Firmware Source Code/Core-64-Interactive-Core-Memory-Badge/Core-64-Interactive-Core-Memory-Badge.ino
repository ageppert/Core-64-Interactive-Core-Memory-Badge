/*
  Core 64 Interactive Core Memory Badge
  2019 and beyond - Andy Geppert
  Teensy LC, i2C OLED on pins 18 and 19, LED pixel array on pin 17 (Vin buffered)... 
  ... more in HardwareIOMap.h
  
  Arduino IDE 1.8.9               https://www.arduino.cc/en/Main/Software
  TEENSYDUINO LOADER 1.53         https://www.pjrc.com/teensy/td_download.html

  LIBRARY DEPENDENCIES:
  Arduino > Tools > Manage Libraries > Install
    Adafruit_SSD1306                            2.2.1   by Adafruit for Monochrome OLED 128x64 and 128x32
    Adafruit_SSD1327                            1.0.0   by Adafruit for Monochrome OLED 128x128
    Adafruit_SSD1351                            1.2.7   by Adafruit for Color OLED 1.27" and 1.5" in the Adafruit shop
    Adafruit GFX Library                        1.10.6 / 1.8.3   by Adafruit
    Adafruit_BusIO                              1.3.1   by Adafruit
    Adafruit_MCP23017 Arduino LIbrary           1.0.6   by Adafruit
    FastLED                                     3.3.3   by Daniel Garcia
    SdFat - Adafruit Fork                       1.2.3   by Bill Greiman (fork of SdFat)
    TeensyView                                  1.1.0   by Sparkfun for monochrome OLED 128x32 in the Sparkfun store
    Wire.h

    DigitalIO                                   1.0.0   by Bill Greiman
    OR
    maybe <DigitalFastWrite.h> code by John Rains http://code.google.com/p/digitalwritefast (in DIY drones directory)
    OR
    NOT <FastDigitalPin.h> Romans Audio FastDigitalPinLibrary by Michael Romans 1.0.1
    The libraries should end up being in your a "Libraries" folder in your default Sketchbook location.
      OPTIONAL
        SparkFun Ambient Light Sensor Arduino Library 1.0.3 by Ellas Santistevan
        Adafruit ILI9341 Library                    1.5.6   by Adafruit

  LIBRARIES INCLUDED IN SRC DIR
    Si7210, LTR329, NeonPixel
    
 */

#include <stdint.h>
#include <stdbool.h>
#include <HardwareSerial.h> // Temp, debugging why Digital Pin 1 won't respond

#include "HardwareIOMap.h"
#include "Heart_Beat.h"
#include "Serial_Debug.h"
#include "LED_Array_HAL.h"
#include "Neon_Pixel_HAL.h"
#include "OLED_Screen.h"
#include "Analog_Input_Test.h"
#include "Buttons_HAL.h"
#include "Core_HAL.h"
#include "EEPROM_HAL.h"
#include "I2C_Manager.h"
#include "SD_Card_Manager.h"
#include "Ambient_Light_Sensor.h"

#include "Core_Driver.h"
// #define DEBUG 1

uint32_t SerialNumber = 0;          // Default value is 0 and should be non-zero if the Serial Number is valid.
bool TopLevelStateChanged = false;
enum TopLevelState                  // Master State Machine
{
  STATE_STARTUP = 0,                //  0 Start-up
  STATE_SCROLLING_TEXT,             //  1 Scrolling text at power on
  STATE_CORE_FLUX_DETECTOR,         //  2 Testing all cores and displaying core state
  STATE_MONOCHROME_DRAW,            //  3 Test LED Driver with binary values
  STATE_LED_TEST_ALL_BINARY,        // y 4 Test LED Driver with binary values
  STATE_LED_TEST_ONE_STRING,        // y 5 Testing LED Driver
  STATE_LED_TEST_ONE_MATRIX_MONO,   // y 6 Testing LED Driver with matrix array and monochrome color
  STATE_LED_TEST_ONE_MATRIX_COLOR,  // n 7 Testing LED Driver with matrix array and multi-color symbols
  STATE_TEST_EEPROM,                //  8
  STATE_LED_TEST_ALL_COLOR,         // n 9 Test LED Driver with all pixels and all colors
  STATE_CORE_TOGGLE_BIT,            //  10 Test one core with one function
  STATE_CORE_TEST_ONE,              //  11 Testing core #coreToTest and displaying core state
  STATE_CORE_TEST_MANY,             //  12 Testing multiple cores and displaying core state
  STATE_HALL_TEST,                  //  13 Testing hall switch and sensor response
  STATE_LAST,                       //  14 last one, return to 0.
} ;
static uint8_t TopLevelStateDefault = STATE_HALL_TEST; // STATE_STARTUP;
static uint8_t TopLevelState = TopLevelStateDefault; // 
uint8_t value = 0;
uint8_t a = 0;

  /*                      *********************
                          ***     Setup     ***
                          *********************
  */
void setup() {
  HeartBeatSetup();
  LED_Array_Init();
  SerialDebugSetup();
    Serial.begin(115200);  // Need to move this serial stuff into the Serial_Debug.c file out of here!
    // while (!Serial) { ; }  // wait for serial port to connect.
    LED_Array_Test_Pixel_Matrix_Color();
  EEPROM_Setup();
  delay(1500);
  OLEDScreenSetup();
  I2CIOESafeInput();  // Keep this before any other IO Expander usage/configuration.
  I2CManagerSetup();
    delay(1500); // Wait for the serial port to connect if it's there. Otherwise, move on.
    Serial.println("\nCore64 - Interactive Core Memory Badge Kit");
    Serial.println("By Andy Geppert");
    Serial.println("More information at Core64.io");
    Serial.println();
    Serial.println("Serial Debug Port Started at 115200"); // TO DO: automatically update speed
  I2CManagerBusScan();
  DetectHardwareVersion();
  SerialNumber = EEPROMExtReadSerialNumber();
    Serial.print("Hardware Version: ");
    Serial.print(HardwareVersionMajor);
    Serial.print(".");
    Serial.print(HardwareVersionMinor);
    Serial.print(".");
    Serial.println(HardwareVersionPatch);
    Serial.print("Serial Number: ");
    Serial.println(SerialNumber);
    Serial.print("Born on: 20");
    Serial.print(EEPROMExtReadBornOnYear());
    Serial.print("-");
    Serial.print(EEPROMExtReadBornOnMonth());
    Serial.print("-");
    Serial.println(EEPROMExtReadBornOnDay());    
    Serial.print("Firmware Version: ");
    Serial.println(FIRMWAREVERSION);
    Serial.println();
  // TO DO: Most of this setup should occur after the hardware version is determined, so setup is configured appropriately
  delay(250);     // A little time to print all that serial data from above.
  AnalogSetup();
  Buttons_Setup();
  CoreSetup();
  SDCardSetup();
  AmbientLightSetup();
  Neon_Pixel_Array_Init();
}

void loop() {
  static uint8_t ColorFontSymbolToDisplay = 2;
  static bool ButtonReleased = true;
  static uint32_t Button1HoldTime = 0;
  static uint8_t coreToTest = 0;

  /*                      *********************
                          *** Housekeepting ***
                          *********************
  */
  // IOESpare2_On();
  HeartBeat(); 
  AnalogUpdate();
  AmbientLightUpdate();
  SDCardVoltageLog(1000);
  CheckForSerialCommand();        // Press "c" to test core write and read
  #ifdef DEBUG
    Serial.println("DEBUG enabled."); // Need to abstract this debug stuff
  #endif

  //I2CIOEScan(); // temporary debug

  /*                      ************************
                          *** User Interaction ***
                          ************************
  */

  // MODE SWITCHING
  // If button is pressed, go to next mode.
  // Must be released and pressed again for subsequent action.

  Button1HoldTime = ButtonState(1,0);
  if ( (ButtonReleased == true) && (Button1HoldTime >= 500) ){
    ButtonState(1,1); // Force a "release" after press by clearing the button hold down timer
    ButtonReleased = false;
    ColorFontSymbolToDisplay++;
    if(ColorFontSymbolToDisplay>3) { ColorFontSymbolToDisplay = 0; }
    TopLevelState++;
    TopLevelStateChanged = true; // User application has one time to use this before it is reset.

  }
  else {
    if (Button1HoldTime == 0) {
      ButtonReleased = true;
      TopLevelStateChanged = false;
    }
  }

  // IOESpare2_Off();

  switch(TopLevelState)
  {
  case STATE_STARTUP:
    TopLevelState++;
    break;

  case STATE_SCROLLING_TEXT:
    // IOESpare1_On();
    LED_Array_Monochrome_Set_Color(140,255,255);
    ScrollTextToCoreMemory();   // This writes directly to the RAM core memory array and bypasses reading it.
    // delay(25);
    Core_Mem_Array_Write();     // Transfer from RAM Core Memory Array to physical core memory
    // Core_Mem_Array_Write_Test_Pattern();
    // delay(25);
    Core_Mem_Array_Read();      // Transfer from physical core memory to RAM Core Memory Array
    // delay(25);
    CopyCoreMemoryToMonochromeLEDArrayMemory();
    // delay(25);
    LED_Array_Matrix_Mono_Display();
    delay(25);
    OLEDSetTopLevelState(TopLevelState);
    OLEDScreenUpdate();
    // IOESpare1_Off();
    #ifdef NEON_PIXEL_ARRAY
      Neon_Pixel_Array_Matrix_Mono_Display();
      CopyCoreMemoryToMonochromeNeonPixelArrayMemory();
    #endif
    TopLevelStateChanged = false;
    break;

  case STATE_CORE_FLUX_DETECTOR:                         // Read 64 cores 10ms (110us 3x core write, with 40us delay 64 times), update LEDs 2ms
    LED_Array_Monochrome_Set_Color(50,255,255);
    LED_Array_Memory_Clear();
    //DebugWithReedSwitchOutput();
    for (coreToTest = 0; coreToTest < 64 ; coreToTest++) {   
      //Core_Mem_Bit_Write(coreToTest,0);                     // default to bit set
      Core_Mem_Bit_Write(coreToTest,1);                     // default to bit set
      if (Core_Mem_Bit_Read(coreToTest)==true) {
        LED_Array_String_Write(coreToTest, 1);
        #ifdef NEON_PIXEL_ARRAY
          Neon_Pixel_Array_String_Write(coreToTest, 1);
        #endif
        }
      else { 
        LED_Array_String_Write(coreToTest, 0); 
        #ifdef NEON_PIXEL_ARRAY
          Neon_Pixel_Array_String_Write(coreToTest, 0);
        #endif
        }
      delayMicroseconds(40); // This 40us delay is required or LED array, first 3-4 pixels in the electronic string, get weird! RF?!??
    }
    //TracingPulses(1);
    LED_Array_String_Display();
    #ifdef NEON_PIXEL_ARRAY
      Neon_Pixel_Array_Matrix_String_Display();
    #endif
    //DebugWithReedSwitchInput();
    OLEDSetTopLevelState(TopLevelState);
    OLEDScreenUpdate();
    TopLevelStateChanged = false;
    break;

  case STATE_MONOCHROME_DRAW:       // Simple drawing mode
    // Monitor cores for changes. 
      Core_Mem_Monitor();
    // Which cores changed state?
    // Add selected color to that pixel in the LED Array.
    for (uint8_t y=0; y<8; y++)
    {
      for (uint8_t x=0; x<8; x++)
      {
        if (CoreArrayMemory [y][x]) { 
          LED_Array_Matrix_Mono_Write(y, x, 1);
          #ifdef NEON_PIXEL_ARRAY
            Neon_Pixel_Array_Matrix_Mono_Write(y, x, 1);
          #endif
        }
      }
    }
    // Quick touch of the hall sensor clears the screen.
    if ( (ButtonReleased) && (ButtonState(1,0) > 50 ) ) { 
      LED_Array_Memory_Clear(); 
      #ifdef NEON_PIXEL_ARRAY
        Neon_Pixel_Array_Memory_Clear();
      #endif
    }
    // If this was the first time into this state, set default screen to be 0xDEADBEEF and 0xC0D3C4FE
    if (TopLevelStateChanged)
    {
      LED_Array_Monochrome_Set_Color(0,255,255);      // Hue 0 = RED
      LED_Array_Binary_Write_Default();
      LED_Array_Binary_To_Matrix_Mono();
      #ifdef NEON_PIXEL_ARRAY
        Neon_Pixel_Array_Binary_Write_Default();
        Neon_Pixel_Array_Binary_To_Matrix_Mono();
      #endif
      OLEDScreenClear();
    }
    LED_Array_Matrix_Mono_Display();                  // Show the updated LED array.
    LED_Array_Matrix_Mono_to_Binary();                // Convert whatever is in the LED Matrix Array to a 64-bit binary value...
    OLEDSetTopLevelState(TopLevelState);
    OLED_Show_Matrix_Mono_Hex();                      // ...and display it on the OLED.
    #ifdef NEON_PIXEL_ARRAY
      Neon_Pixel_Array_Matrix_Mono_Display();
    #endif
    TopLevelStateChanged = false;
    break;

  case STATE_LED_TEST_ALL_BINARY: // Counts from lower right and left/up in binary.
    LED_Array_Test_Count_Binary();
    OLEDSetTopLevelState(TopLevelState);
    OLEDScreenUpdate();
    // Skip out of this test state immediately.
    TopLevelState = STATE_LAST;
    break;

  case STATE_LED_TEST_ONE_STRING: // Turns on 1 pixel, sequentially, from left to right, top to bottom using 1D string addressing
    LED_Array_Test_Pixel_String();
    OLEDSetTopLevelState(TopLevelState);
    OLEDScreenUpdate();
    break;

  case STATE_LED_TEST_ONE_MATRIX_MONO: // Turns on 1 pixel, sequentially, from left to right, top to bottom using 2D matrix addressing
    LED_Array_Test_Pixel_Matrix_Mono();
    OLEDSetTopLevelState(TopLevelState);
    OLEDScreenUpdate();
    break;

  case STATE_LED_TEST_ONE_MATRIX_COLOR: // Multi-color symbols
    LED_Array_Test_Pixel_Matrix_Color();
    OLEDSetTopLevelState(TopLevelState);
    OLEDScreenUpdate();
    break;

  case STATE_TEST_EEPROM: // 
    value = EEPROM_Hardware_Version_Read(a);
    Serial.print(a);
    Serial.print("\t");
    Serial.print(value);
    Serial.println();
    a = a + 1;
    if (a == 128) {
      a = 0;
    }
    delay(10);
    break;
    
  case STATE_LED_TEST_ALL_COLOR: // FastLED Demo of all color
    LED_Array_Test_Rainbow_Demo();
    OLEDSetTopLevelState(TopLevelState);
    OLEDScreenUpdate();
    break;

  case STATE_CORE_TOGGLE_BIT:     // Just toggle a single bit on and off.
    coreToTest=0;
    LED_Array_Monochrome_Set_Color(50,255,255);
    for (uint8_t bit = coreToTest; bit<(coreToTest+1); bit++)
      {
        // IOESpare1_On();
        Core_Mem_Bit_Write(bit,0);
        LED_Array_String_Write(bit,0);
        LED_Array_String_Display();
        // IOESpare1_Off();
        // delay(5);

        // IOESpare1_On();
        Core_Mem_Bit_Write(bit,1);
        LED_Array_String_Write(bit,1);
        LED_Array_String_Display();
        // IOESpare1_Off();
        // delay(50);
      }

    //delay(5);
    OLEDSetTopLevelState(TopLevelState);
    OLEDScreenUpdate();
    break;

  case STATE_CORE_TEST_ONE:
    coreToTest=0;
    LED_Array_Monochrome_Set_Color(100,255,255);
    LED_Array_Memory_Clear();
    //LED_Array_String_Write(coreToTest,1);               // Default to pixel on
    //  TracingPulses(1);
    // Core_Mem_Bit_Write(coreToTest,0);                     // default to bit set
    Core_Mem_Bit_Write(coreToTest,1);                     // default to bit set
    //  TracingPulses(2);
    if (Core_Mem_Bit_Read(coreToTest)==true) {LED_Array_String_Write(coreToTest, 1);}
    else { LED_Array_String_Write(coreToTest, 0); }
    //  TracingPulses(1);
    // delay(10);
    LED_Array_String_Display();
    OLEDSetTopLevelState(TopLevelState);
    OLEDScreenUpdate();
    delay(10);
    break;

  case STATE_CORE_TEST_MANY:
    coreToTest=0;
    for (uint8_t bit = coreToTest; bit<(64); bit++)
      {
      LED_Array_Monochrome_Set_Color(100,255,255);
      LED_Array_Memory_Clear();
      //LED_Array_String_Write(coreToTest,1);               // Default to pixel on
      //  TracingPulses(1);
      // Core_Mem_Bit_Write(coreToTest,0);                     // default to bit set
      Core_Mem_Bit_Write(bit,1);                     // default to bit set
      //  TracingPulses(2);
      if (Core_Mem_Bit_Read(bit)==true) {LED_Array_String_Write(bit, 1);}
      else { LED_Array_String_Write(bit, 0); }
      //  TracingPulses(1);
      // delay(10);
      LED_Array_String_Display();
      }
    OLEDSetTopLevelState(TopLevelState);
    OLEDScreenUpdate();
    break;

  case STATE_HALL_TEST:
    LED_Array_Monochrome_Set_Color(25,255,255);
    LED_Array_Memory_Clear();

    // IOESpare1_On();
    if(ButtonState(1,0)) { LED_Array_String_Write(57,1); }
    if(ButtonState(2,0)) { LED_Array_String_Write(59,1); }
    if(ButtonState(3,0)) { LED_Array_String_Write(61,1); }
    if(ButtonState(4,0)) { LED_Array_String_Write(63,1); }
    // IOESpare1_Off();

    LED_Array_String_Display();
    OLEDSetTopLevelState(TopLevelState);
    OLEDScreenUpdate();
  
    break;

  case STATE_LAST:
    LED_Array_Memory_Clear();
    LED_Array_Matrix_Mono_Display();
    LED_Array_Monochrome_Set_Color(125,255,255);
    OLEDSetTopLevelState(TopLevelState);
    OLEDScreenUpdate();
    TopLevelState = TopLevelStateDefault;   
    break;

  default:
    Serial.println("Invalid TopLevelState");
    break;
  }

}

void coreTesting() {
  /*
  static uint8_t c = 0;
  for (uint8_t i = 1; i <=2; i++)
  {
    CoreWriteBit(c,0); CoreWriteBit(c,1);
  }
  c++;
  if (c == 64) {c=0;}
  */
  // Read testing
   Core_Mem_Bit_Write(3,1);
   Core_Mem_Bit_Write(3,0);
  // CoreArrayMemory [0][3] = CoreReadBit(3);
  // Whole Array Testing
  //  for (uint8_t i = 0; i <= 63; i++ ) { CoreWriteBit(i,1); }
  //  for (uint8_t i = 0; i <= 63; i++ ) { CoreWriteBit(i,0); }
  // Column Testing
  // for (uint8_t i = 1; i <= 63; i=i+8 ) { CoreWriteBit(i,0); CoreWriteBit(i,1); }
  //for (uint8_t i = 0; i <= 7; i++ ) { CoreWriteBit(i,1); }
  // Row Testing
  // for (uint8_t i = 0; i <= 63; i=i+8 ) { CoreWriteBit(i,1); }
  // for (uint8_t i = 0; i <= 63; i=i+8 ) { CoreWriteBit(i,0); }
  /*
  CoreWriteBit(0,1);
  CoreWriteBit(0,1);
  CoreWriteBit(0,0);
  CoreWriteBit(7,1);
  CoreWriteBit(7,1);
  CoreWriteBit(0,0);
  //CoreReadBit(0);
  //CoreClearAll();
  */
}

void CheckForSerialCommand() {
  char c;
  if(Serial.available() > 0)
  {
    c = Serial.read();
    Serial.write(c);
    Serial.println();
    switch(c)
    {
    case 'c':
      coreTesting();
      break;

    default:
      Serial.print("Ignoring unknown command: ");
      Serial.println(c);
    }
  }
}
