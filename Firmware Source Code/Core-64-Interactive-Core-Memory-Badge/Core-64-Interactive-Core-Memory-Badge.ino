/*
 * Core 64 Breadboard Test
 * 2019 and beyond - Andy Geppert
 * Teensy LC, i2C OLED on pins 18 and 19, LED pixel array on pin 17 (Vin buffered)
 */

#include <stdint.h>
#include <stdbool.h>
#include <HardwareSerial.h>

#include "Heart_Beat.h"
#include "Serial_Debug.h"
#include "LED_Array_HAL.h"
#include "OLED_Screen.h"
#include "Digital_IO_Test.h"
#include "Analog_Input_Test.h"
#include "Buttons.h"
#include "Core_API.h"

// #define DEBUG 1

uint8_t TopLevelState;   // Master State Machine
enum TopLevelState
{
  STATE_SCROLLING_TEXT = 0,         //  0 Scrolling text at power on
  STATE_LED_TEST_ALL_BINARY,        //  1 Test LED Driver with binary values
  STATE_LED_TEST_ONE_STRING,        //  2 Testing LED Driver
  STATE_LED_TEST_ONE_MATRIX_MONO,   //  3 Testing LED Driver with matrix array and monochrome color
  STATE_LED_TEST_ONE_MATRIX_COLOR,  //  4 Testing LED Driver with matrix array and multi-color symbols
  STATE_LED_TEST_ALL_COLOR,         //  5 Test LED Driver with all pixels and all colors
  STATE_CORE_TEST_ONE,              //  6 Testing core #3 and displaying core state
  STATE_CORE_TEST_ALL,              //  7 Testing all cores and displaying core state
  STATE_LAST                        //  8 last one, return to 0.
} ;

  /*                      *********************
                          ***     Setup     ***
                          *********************
  */
void setup() {
  HeartBeatSetup();
  DigitalIOSetup();
  AnalogSetup();
  LED_Array_Init();
  SerialDebugSetup();
    Serial.begin(115200);  // Need to move this serial stuff into the Serial_Debug.c file out of here!
    //while (!Serial) { ; } // wait for serial port to connect. Needed for native USB port only
    Serial.println();
    Serial.println("Serial Debug Port Started at ");
  OLEDScreenSetup();
  ButtonsSetup();
  CoreSetup();
  TopLevelState = STATE_SCROLLING_TEXT;
//  TopLevelState = STATE_LED_TEST_ONE_MATRIX;
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
  HeartBeat();
  // With AnalogUpdate() and OLEDScreenUpdate() both commented out, white LED problem does not happen in STATE_CORE_TEST_ONE,
  // but it still happens (less frequently) in STATE_CORE_TEST_ALL.
  // AnalogUpdate();      
  // OLEDScreenUpdate();
  // DigitalIOUpdate();
  // WriteColorFontSymbolToLedScreenMemoryMatrixColor(ColorFontSymbolToDisplay);
  CheckForSerialCommand();        // Press "c" to test core write and read
  #ifdef DEBUG
  Serial.println("DEBUG enabled."); // Need to abstract this debug stuff
  #endif

  /*                      ************************
                          *** User Interaction ***
                          ************************
  */

  // MODE SWITCHING
  // If button is pressed, go to next logo symbol and send core array pulse test.
  // Must be released and pressed again for subsequent action.
  Button1HoldTime = Button1State(0);
  if ( (ButtonReleased == true) && (Button1HoldTime >= 10) ){
    Button1State(1); // Pause between presses, clear the duration
    ButtonReleased = false;
    ColorFontSymbolToDisplay++;
    if(ColorFontSymbolToDisplay>3) { ColorFontSymbolToDisplay = 0; }
    TopLevelState++;
  }
  else {
    if (Button1HoldTime == 0) {
      ButtonReleased = true;
    }
  }

  switch(TopLevelState)
  {
  case STATE_SCROLLING_TEXT:
    ScrollTextToCoreMemory(); // This writes directly to the core memory array and bypasses reading it.
    CopyCoreMemoryToMonochromeLEDArrayMemory();
    LED_Array_Matrix_Mono_Display();
    break;

  case STATE_LED_TEST_ALL_BINARY: // Counts from lower right and left/up in binary.
    LED_Array_Test_Count_Binary();
    break;

  case STATE_LED_TEST_ONE_STRING: // Turns on 1 pixel, sequentially, from left to right, top to bottom using 1D string addressing
    LED_Array_Test_Pixel_String();
    break;

  case STATE_LED_TEST_ONE_MATRIX_MONO: // Turns on 1 pixel, sequentially, from left to right, top to bottom using 2D matrix addressing
    LED_Array_Test_Pixel_Matrix_Mono();
    break;

  case STATE_LED_TEST_ONE_MATRIX_COLOR: // Multi-color symbols
    LED_Array_Test_Pixel_Matrix_Color();
    break;

  case STATE_LED_TEST_ALL_COLOR: // FastLED Demo of all color
    LED_Array_Test_Rainbow_Demo();
    break;

  case STATE_CORE_TEST_ONE:
    CoreClearAll();
    CoreWriteBit(coreToTest,0);
    WriteOneBitToCoreMemory(coreToTest,CoreReadBit(coreToTest));
    CopyCoreMemoryToMonochromeLEDArrayMemory();
    // Testing to see if I decode this to the LED matrix correctly
    // This code is lighting up row 0, col 0-6 then jumps to row 1, col 1-7.
    // It should be lighting up all of row 0 and the 0-6 of of row 1.
    // ToDo: figure out why the proper bit is not lighting up. 
    delay(150);
    LED_Array_String_Write(coreToTest,0);
    // coreToTest++;
    // if(coreToTest>=9){coreToTest=0;}
    coreToTest=2;
    LED_Array_String_Write(coreToTest,1);
    // Test end
    // LEDArrayMonochromeUpdate();
    LED_Array_Matrix_Mono_Display();
    break;

  case STATE_CORE_TEST_ALL: // ToDo: White stuck LED happens in this state, but not in the scrolling text state. CoreReadArray() is the big difference.
    CoreReadArray(); // Update Core Memory with read state of all 64 bits.
    CopyCoreMemoryToMonochromeLEDArrayMemory();
    // LEDArrayMonochromeUpdate();
    LED_Array_Matrix_Mono_Display();
    break;

  case STATE_LAST:
    TopLevelState = STATE_SCROLLING_TEXT;   
    break;

  default:
    Serial.println("Invalid TopLevelState");
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
   CoreWriteBit(3,1);
   CoreWriteBit(3,0);
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
