#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "Buttons_HAL.h"
#include "HardwareIOMap.h"
#include "I2C_Manager.h"

// #define USE_ANALOG_INPUT_HALL_SWITCH_2

void Buttons_Setup() {
  if (HardwareVersionMinor == 2)
  {
    pinMode(Pin_Hall_Switch, INPUT);
    pinMode(Pin_Reed_Switch, INPUT);
  }
  else if (HardwareVersionMinor == 3)
  {
    IOE39CoresSenseHalls.pinMode(IOE39_Hall_Switch_1, INPUT);
    IOE39CoresSenseHalls.pullUp(IOE39_Hall_Switch_1, HIGH);  // turn on a 100K pullup internally
    IOE39CoresSenseHalls.pinMode(IOE39_Hall_Switch_2, INPUT);
    IOE39CoresSenseHalls.pullUp(IOE39_Hall_Switch_2, HIGH);  // turn on a 100K pullup internally
    IOE39CoresSenseHalls.pinMode(IOE39_Hall_Switch_3, INPUT);
    IOE39CoresSenseHalls.pullUp(IOE39_Hall_Switch_3, HIGH);  // turn on a 100K pullup internally
    IOE39CoresSenseHalls.pinMode(IOE39_Hall_Switch_4, INPUT);
    IOE39CoresSenseHalls.pullUp(IOE39_Hall_Switch_4, HIGH);  // turn on a 100K pullup internally
    #ifdef USE_ANALOG_INPUT_HALL_SWITCH_2
    // No setup required
    #endif
  }
}

// TO DO: Abstract to ButtonState and send Button # to this function so it can return state for any requested button.
uint32_t Button1State(uint32_t clear_duration) { // send a 1 or more to clear, 0 to use normally)
  static uint32_t lasttime;
  static uint32_t thistime = 0;
  static uint32_t duration = 0;
  static uint32_t delta = 0;
  static uint8_t  state = 0;
  static uint8_t  state_test = 0;
  static uint16_t AnalogLevel = 0;

  if(clear_duration == 1) { duration = 0 ;}
  thistime = millis();

  if (HardwareVersionMinor == 2)
  {
    state = digitalReadFast(Pin_Hall_Switch);
  }
  else if (HardwareVersionMinor == 3)
  {
    #ifdef USE_ANALOG_INPUT_HALL_SWITCH_2
    AnalogLevel = analogRead(Pin_v030_Hall_Switch_2);
    if(AnalogLevel <= 512) {state = 0;}
    else {state = 1;}
    #else
    // TO DO: Why do I have to read these twice in a row to get a good read?
    state_test = (IOE39CoresSenseHalls.digitalRead(IOE39_Hall_Switch_1)); // Can also read all inputs at once with .readGPIOAB()
    state = (IOE39CoresSenseHalls.digitalRead(IOE39_Hall_Switch_1)); // Can also read all inputs at once with .readGPIOAB()
    #endif
    // Serial.print(state_test);
    // Serial.println(state);
   }

  if(state != 1) {
    delta = thistime - lasttime ;
    duration = duration + delta ;
    }
  else {
    duration = 0; 
    }
  /*
  Serial.print("state,duration, delta, thistime, lasttime ");
  Serial.print(state);
  Serial.print(", ");
  Serial.print(duration);
  Serial.print(", ");
  Serial.print(delta);
  Serial.print(", ");
  Serial.print(thistime);
  Serial.print(", ");
  Serial.print(lasttime);
  Serial.println(" ms");
  */
  lasttime = thistime;

  return duration; // in ms
}
