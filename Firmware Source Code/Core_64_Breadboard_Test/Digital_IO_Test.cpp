#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "HardwareIOMap.H"

void DigitalIOSetup() {
  pinMode(Pin_Address_1, OUTPUT);
  pinMode(Pin_Address_17, OUTPUT);
}

void DigitalIOUpdate() {
  //digitalWrite(Pin_Address_1, LOW); 
  digitalWrite(Pin_Address_1, HIGH); // High is 700 ns
  digitalWrite(Pin_Address_1, LOW);
  //digitalWriteFast(Address_17, LOW);  // 
  digitalWriteFast(Pin_Address_17, HIGH); // High is 10-20 ns (10ns is resolution limit of 100 MHz scope)
  digitalWriteFast(Pin_Address_17, LOW);
}
