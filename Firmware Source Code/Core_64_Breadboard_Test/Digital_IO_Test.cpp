#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "HardwareIOMap.H"
#include "Core_Functions.h"

void DigitalIOSetup() {
  pinMode(Pin_Sense_Pulse, INPUT);
  pinMode(Pin_Matrix_Drive_1_Q1P, OUTPUT);
  pinMode(Pin_Matrix_Drive_2_Q1N, OUTPUT);
  pinMode(Pin_Matrix_Drive_3_Q2P, OUTPUT);
  pinMode(Pin_Matrix_Drive_4_Q2N, OUTPUT);
  pinMode(Pin_Matrix_Drive_5_Q3P, OUTPUT);
  pinMode(Pin_Matrix_Drive_6_Q3N, OUTPUT);
  pinMode(Pin_Matrix_Drive_7_Q4P, OUTPUT);
  pinMode(Pin_Matrix_Drive_8_Q4N, OUTPUT);
  pinMode(Pin_Matrix_Drive_9_Q5P, OUTPUT);
  pinMode(Pin_Matrix_Drive_10_Q5N, OUTPUT);
  pinMode(Pin_Matrix_Drive_11_Q6P, OUTPUT);
  pinMode(Pin_Matrix_Drive_12_Q6N, OUTPUT);
  pinMode(Pin_Matrix_Drive_13_Q7P, OUTPUT); // Shared pin 13. Onboard LED, Hearbeat. Return to previous state when finished using.
  pinMode(Pin_Matrix_Drive_14_Q7N, OUTPUT);
  pinMode(Pin_Matrix_Drive_15_Q8P, OUTPUT);
  pinMode(Pin_Matrix_Drive_16_Q8N, OUTPUT);
  pinMode(Pin_Matrix_Drive_17_Q9P, OUTPUT); // Shared pin 17. LED Array. Return to previous state when finished using.
  pinMode(Pin_Matrix_Drive_18_Q9N, OUTPUT);
  pinMode(Pin_Matrix_Drive_19_Q10P, OUTPUT);
  pinMode(Pin_Matrix_Drive_20_Q10N, OUTPUT);
  pinMode(Pin_Write_Enable, OUTPUT);
  pinMode(Pin_Reed_Switch, INPUT);
  pinMode(Pin_Hall_Switch, INPUT);
}

void DigitalIOUpdate() {
/*
  //digitalWrite(Pin_Matrix_Drive_1, LOW); 
  digitalWrite(Pin_Matrix_Drive_1, HIGH); // High is 700 ns
  digitalWrite(Pin_Matrix_Drive_1, LOW);
  //digitalWriteFast(Pin_Matrix_Drive_17, LOW);  // 
  digitalWriteFast(Pin_Matrix_Drive_17, HIGH); // High is 10-20 ns (10ns is resolution limit of 100 MHz scope)
  digitalWriteFast(Pin_Matrix_Drive_17, LOW);
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
