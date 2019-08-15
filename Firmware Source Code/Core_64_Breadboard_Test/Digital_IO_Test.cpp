#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "HardwareIOMap.H"

void DigitalIOSetup() {
  pinMode(Pin_Sense_Pulse, INPUT);
  pinMode(Pin_Matrix_Drive_1, OUTPUT);
  pinMode(Pin_Matrix_Drive_2, OUTPUT);
  pinMode(Pin_Matrix_Drive_3, OUTPUT);
  pinMode(Pin_Matrix_Drive_4, OUTPUT);
  pinMode(Pin_Matrix_Drive_5, OUTPUT);
  pinMode(Pin_Matrix_Drive_6, OUTPUT);
  pinMode(Pin_Matrix_Drive_7, OUTPUT);
  pinMode(Pin_Matrix_Drive_8, OUTPUT);
  pinMode(Pin_Matrix_Drive_9, OUTPUT);
  pinMode(Pin_Matrix_Drive_10, OUTPUT);
  pinMode(Pin_Matrix_Drive_11, OUTPUT);
  pinMode(Pin_Matrix_Drive_12, OUTPUT);
  pinMode(Pin_Matrix_Drive_13, OUTPUT);
  pinMode(Pin_Matrix_Drive_14, OUTPUT);
  pinMode(Pin_Matrix_Drive_15, OUTPUT);
  pinMode(Pin_Matrix_Drive_16, OUTPUT);
  pinMode(Pin_Matrix_Drive_17, OUTPUT); // Shared pin 17. Return to previous state when finished using.
  pinMode(Pin_Matrix_Drive_18, OUTPUT);
  pinMode(Pin_Matrix_Drive_19, OUTPUT);
  pinMode(Pin_Matrix_Drive_20, OUTPUT);
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
  static unsigned long On_Off_Time[] = {500,500}; // Off, on 
  static unsigned PulseSequencePosition = 0;
  static unsigned long NowTime = 0;
  static bool PULSE_STATE = LOW;
  static unsigned long PulseStateTimer = 0;
  NowTime = millis();
  if ((NowTime - PulseStateTimer) >= On_Off_Time[PulseSequencePosition])
  {
    PULSE_STATE = !PULSE_STATE;
    PulseStateTimer = NowTime;
    PulseSequencePosition++;
    if(PulseSequencePosition>1) {PulseSequencePosition = 0;}
  }
  digitalWriteFast(Pin_Matrix_Drive_1, PULSE_STATE);
  digitalWriteFast(Pin_Matrix_Drive_12, PULSE_STATE);

  if (digitalReadFast(Pin_Reed_Switch))
  {
    digitalWriteFast(Pin_Write_Enable, LOW);    
  }
  else
  {
    digitalWriteFast(Pin_Write_Enable, HIGH);
  }

}
