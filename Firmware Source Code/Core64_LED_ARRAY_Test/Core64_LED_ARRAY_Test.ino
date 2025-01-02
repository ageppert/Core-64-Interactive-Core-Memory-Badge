// RGB LED Test for Core64 LED Array PCBA
// Version 1

#include <Adafruit_NeoPixel.h>

#define PIN       22    // Core64 default with RP2040
#define NUM_LEDS  64    // Core64 default LED test

Adafruit_NeoPixel strip = Adafruit_NeoPixel(NUM_LEDS, PIN, NEO_GRB + NEO_KHZ800);

// IMPORTANT: To reduce NeoPixel burnout risk, add 1000 uF capacitor across
// pixel power leads, add 300 - 500 Ohm resistor on first pixel's data input
// and minimize distance between Arduino and first pixel.  Avoid connecting
// on a live circuit...if you must, connect GND first.

void setup() {
  strip.begin();
  strip.show(); // Initialize all pixels to 'off'
}

void loop() {
  colorWipe(strip.Color(128, 0, 0), 5); // Red
  delay(1000);
  colorWipe(strip.Color(0, 128, 0), 5); // Green
  delay(1000);
  colorWipe(strip.Color(0, 0, 128), 5); // Blue
  delay(1000);
}

// Fill the dots one after the other with a color
void colorWipe(uint32_t c, uint8_t wait) {
  for(uint16_t i=0; i<strip.numPixels(); i++) {
    strip.setPixelColor(i, c);
    strip.show();
    delay(wait);
  }
}
