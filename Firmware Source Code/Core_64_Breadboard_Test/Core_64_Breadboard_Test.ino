/*
 * Core 64 Breadboard Test
 * 2019 - Andy Geppert
 * Teensy LC, i2C OLED on pins 18 and 19, LED pixel array on pin 17 (Vin buffered)
 */

#include <stdint.h>
#include <stdbool.h>
#include <HardwareSerial.h>

#include "Heart_Beat.h"
#include "Serial_Debug.h"
#include "LED_Array.h"
#include "OLED_Screen.h"
#include "Digital_IO_Test.h"
#include "Analog_Input_Test.h"
#include "Buttons.h"
#include "Core_API.h"

//#define DEBUG 1

#define VERSION "0.1.0"   // TO DO: connect version number to a value that the firmware can interact with and display.
const String FirmwareVersion=VERSION;

uint8_t TopLevelState;   // Master State Machine
enum TopLevelState
{
  STATE_SCROLLING_TEXT = 0,     //  0 Scrolling text at power on
  STATE_CORE_TEST_ONE,          //  1 Testing core #3 and displaying core state
  STATE_CORE_TEST_ALL,          //  2 Testing all cores and displaying core state
  STATE_LAST                    //  3 last one, return to 0.
} ;

  /*                      *********************
                          ***     Setup     ***
                          *********************
  */
void setup() {
  HeartBeatSetup();
  DigitalIOSetup();
  AnalogSetup();
  LEDArraySetup();
  SerialDebugSetup();
    Serial.begin(115200);  // Need to move this serial stuff into the Serial_Debug.c file out of here!
    //while (!Serial) { ; } // wait for serial port to connect. Needed for native USB port only
    Serial.println();
    Serial.println("Serial Debug Port Started at ");
  OLEDScreenSetup();
  ButtonsSetup();
  CoreSetup();
  TopLevelState = STATE_SCROLLING_TEXT;
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
  // LEDArrayUpdate();
  // WriteColorFontSymbolToLEDArrayColorHSVMemory(ColorFontSymbolToDisplay);
  // LEDArrayColorHSVUpdate();
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
    if(TopLevelState == STATE_LAST) { TopLevelState = 0; }    
  }
  else {
    if (Button1HoldTime == 0) {
      ButtonReleased = true;
    }
  }

  switch(TopLevelState)
  {
  case STATE_SCROLLING_TEXT:
    ScrollTextToCoreMemory(); // This write directly to the core memory array and bypasses readiing it.
    WriteCoreMemoryToMonochromeLEDArrayMemory();
    LEDArrayMonochromeUpdate();
    break;

  case STATE_CORE_TEST_ONE:
    CoreClearAll();
    CoreWriteBit(coreToTest,0);
    WriteOneBitToCoreMemory(coreToTest,CoreReadBit(coreToTest));
    WriteCoreMemoryToMonochromeLEDArrayMemory();
    // Testing to see if I decode this to the LED matrix correctly
    // This code is lighting up row 0, col 0-6 then jumps to row 1, col 1-7.
    // It should be lighting up all of row 0 and the 0-6 of of row 1.
    // ToDo: figure out why the proper bit is not lighting up. 
    delay(150);
    WriteOneBitToMonochromeLEDArrayMemory(coreToTest,0);
    coreToTest++;
    if(coreToTest==15){coreToTest=0;}
    WriteOneBitToMonochromeLEDArrayMemory(coreToTest,1);
    // Test end
    LEDArrayMonochromeUpdate();
    break;

  case STATE_CORE_TEST_ALL: // ToDo: White stuck LED happens in this state, but not in the scrolling text state. CoreReadArray() is the big difference.
    CoreReadArray(); // Update Core Memory with read state of all 64 bits.
    WriteCoreMemoryToMonochromeLEDArrayMemory();
    LEDArrayMonochromeUpdate();
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

