#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "version.h"
#include <Wire.h>   // Default is SCL0 and SDA0 on pins 19/18 of Teensy LC
//#define Pin_I2C_Bus_Data       18    // Default is SCL0 and SDA0 on pins 19/18 of Teensy LC. #define not needed, as Wire.h library takes care of this pin configuration.
//#define Pin_I2C_Bus_Clock      19    // Default is SCL0 and SDA0 on pins 19/18 of Teensy LC. #define not needed, as Wire.h library takes care of this pin configuration.
#include "Analog_Input_Test.h"

#include <Adafruit_GFX.h>
//#include "src/Adafruit-GFX-Library-1.4.8/Adafruit_GFX.h" // ToDo: include this and use a later version.
#include <Adafruit_SSD1306.h>
#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 64 // OLED display height, in pixels
// Declaration for an SSD1306 display connected to I2C (SDA, SCL pins)
#define OLED_RESET     -1 // Reset pin # (or -1 if sharing Arduino reset pin)

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

void OLEDScreenSplash() {
  display.clearDisplay();
//  display.display();
  display.setCursor(0, 0);     // Start at top-left corner
  display.print(F("Core64 "));
  display.println(F(HARDWARE_VERSION));
  display.println(F(" Hackaday "));
  display.print(F("v"));
  display.println(F(FIRMWARE_VERSION));
  display.print(F("Bat:"));
  display.print(GetBatteryVoltagemV(),DEC);
  display.println(F("mV"));
  display.display();
}

void OLEDScreenSetup() {
  if(!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) { // Address 0x3C for 128x64 
    Serial.println(F("SSD1306 allocation failed"));
  }
  display.clearDisplay();
  display.display();
  display.setTextSize(2);      // Normal 1:1 pixel scale
  display.setTextColor(WHITE); // Draw white text
  display.setCursor(0, 0);     // Start at top-left corner
  display.cp437(true);         // Use full 256 char 'Code Page 437' font
/*  
  display.clearDisplay();
  display.setTextSize(2);      // Normal 1:1 pixel scale
  display.setTextColor(WHITE); // Draw white text
  display.setCursor(0, 0);     // Start at top-left corner
  display.cp437(true);         // Use full 256 char 'Code Page 437' font
  display.println(F("  Core 64 "));
  display.println(F("   2019   "));
  display.println(F("   Andy   "));
  display.println(F("  Geppert "));
  display.display();
*/
  OLEDScreenSplash();
}

void OLEDScreenUpdate() {
  static unsigned long UpdatePeriodms = 5000;  
  static unsigned long NowTime = 0;
  static unsigned long UpdateTimer = 0;
  NowTime = millis();
  if ((NowTime - UpdateTimer) >= UpdatePeriodms)
  {
    UpdateTimer = NowTime;
    OLEDScreenSplash();                             // TO DO: This refresh causes the aqua colored Hackaday logo (and others) to blink. Is it signal interference?
  }
}
