#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "HardwareIOMap.H"

void HeartBeatSetup() {
  pinMode(Pin_Built_In_LED, OUTPUT);
}

// Purpose: 
void HeartBeat() {
  static unsigned long HeartBeatSequence[] = {150,150,150,550}; // On, off, on, off 
  static unsigned HeartBeatSequencePosition = 0;
  static unsigned long NowTime = 0;
  static bool LED_HEARTBEAT_STATE = HIGH;
  static unsigned long ledHeartBeatTimer = 0;
  NowTime = millis();
  if ((NowTime - ledHeartBeatTimer) >= HeartBeatSequence[HeartBeatSequencePosition])
  {
    LED_HEARTBEAT_STATE = !LED_HEARTBEAT_STATE;
    ledHeartBeatTimer = NowTime;
    HeartBeatSequencePosition++;
    if(HeartBeatSequencePosition>3) {HeartBeatSequencePosition = 0;}
  }
  digitalWriteFast(Pin_Built_In_LED, LED_HEARTBEAT_STATE);
}
