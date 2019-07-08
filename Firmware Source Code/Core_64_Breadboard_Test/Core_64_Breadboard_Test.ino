/*
 * Core 64 Breadboard Test
 * 2019 - Andy Geppert
 * Teensy LC, i2C OLED on pins __ and __, LED pixel array on pin 17 (Vin buffered)
 */

#include <stdint.h>
#include <stdbool.h>
#include <HardwareSerial.h>

#include "Heart_Beat.h"
#include "Serial_Debug.h"
#include "LED_Array.h"
#include "OLED_Screen.h"
#include "Digital_IO_Test.h"

//#define DEBUG 1

void setup() {
  HeartBeatSetup();
  SerialDebugSetup();
    Serial.begin(115200);
    //while (!Serial) { ; } // wait for serial port to connect. Needed for native USB port only
    Serial.println();
    Serial.println("Serial Debug Port Started at ");
  LEDArraySetup();
  OLEDScreenSetup();
  DigitalIOSetup();
}

void loop() {
  HeartBeat();
  OLEDScreenUpdate();
  DigitalIOUpdate();
  LEDArrayUpdate();
  #ifdef DEBUG
  Serial.println("test");
  #endif
}
