#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "HardwareIOMap.h"

void DigitalIOSetup() {
  pinMode(Pin_v020_Sense_Pulse, INPUT);
  pinMode(PIN_MATRIX_DRIVE_Q1P, OUTPUT);
  pinMode(PIN_MATRIX_DRIVE_Q1N, OUTPUT);
  pinMode(PIN_MATRIX_DRIVE_Q2P, OUTPUT);
  pinMode(PIN_MATRIX_DRIVE_Q2N, OUTPUT);
  pinMode(PIN_MATRIX_DRIVE_Q3P, OUTPUT);
  pinMode(PIN_MATRIX_DRIVE_Q3N, OUTPUT);
  pinMode(PIN_MATRIX_DRIVE_Q4P, OUTPUT);
  pinMode(PIN_MATRIX_DRIVE_Q4N, OUTPUT);
  pinMode(PIN_MATRIX_DRIVE_Q5P, OUTPUT);
  pinMode(PIN_MATRIX_DRIVE_Q5N, OUTPUT);
  pinMode(PIN_MATRIX_DRIVE_Q6P, OUTPUT);
  pinMode(PIN_MATRIX_DRIVE_Q6N, OUTPUT);
  pinMode(PIN_MATRIX_DRIVE_Q7P, OUTPUT); // Shared pin 13. Onboard LED, Hearbeat. Return to previous state when finished using.
  pinMode(PIN_MATRIX_DRIVE_Q7N, OUTPUT);
  pinMode(PIN_MATRIX_DRIVE_Q8P, OUTPUT);
  pinMode(PIN_MATRIX_DRIVE_Q8N, OUTPUT);
  pinMode(PIN_MATRIX_DRIVE_Q9P, OUTPUT); // Shared pin 17. LED Array. Return to previous state when finished using.
  pinMode(PIN_MATRIX_DRIVE_Q9N, OUTPUT);
  pinMode(PIN_MATRIX_DRIVE_Q10P, OUTPUT);
  pinMode(PIN_MATRIX_DRIVE_Q10N, OUTPUT);
  pinMode(PIN_WRITE_ENABLE, OUTPUT);
  pinMode(Pin_Reed_Switch, INPUT);
  pinMode(Pin_Hall_Switch, INPUT);
}

void DigitalIOUpdate() {
/*
  //digitalWrite(PIN_MATRIX_DRIVE_1, LOW); 
  digitalWrite(PIN_MATRIX_DRIVE_1, HIGH); // High is 700 ns
  digitalWrite(PIN_MATRIX_DRIVE_1, LOW);
  //digitalWriteFast(PIN_MATRIX_DRIVE_17, LOW);  // 
  digitalWriteFast(PIN_MATRIX_DRIVE_17, HIGH); // High is 10-20 ns (10ns is resolution limit of 100 MHz scope)
  digitalWriteFast(PIN_MATRIX_DRIVE_17, LOW);
*/
  static uint32_t NowTime = 0;
  static uint32_t PulseStateTimer = 0;
  static uint32_t On_Off_Time[] = {50,50}; // ms
  static uint8_t PulseSequencePosition = 0;
  static bool PULSE_STATE = LOW;
  NowTime = millis();
  if ((NowTime - PulseStateTimer) >= On_Off_Time[PulseSequencePosition])
  {
    PULSE_STATE = !PULSE_STATE;
    PulseStateTimer = NowTime;
    PulseSequencePosition++;
    if(PulseSequencePosition>1) {PulseSequencePosition = 0;}
  }
  
//  if (digitalReadFast(Pin_Reed_Switch))
//  {
//    digitalWriteFast(Pin_Write_Enable, LOW);    
//  }
//  else
//  {
//    digitalWriteFast(Pin_Write_Enable, HIGH);
//  }

}
