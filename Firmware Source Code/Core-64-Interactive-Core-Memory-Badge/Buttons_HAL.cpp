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
  }
}

// TO DO: Abstract to ButtonState and send Button # to this function so it can return state for any requested button.
uint32_t Button1State(uint32_t clear_duration) { // send a 1 or more to clear, 0 to use normally)
  static uint32_t lasttime;
  static uint32_t thistime = 0;
  static uint32_t duration = 0;
  static uint32_t delta = 0;
  static uint8_t  state = 0;

  if(clear_duration == 1) { duration = 0 ;}
  thistime = millis();

  if (HardwareVersionMinor == 2)
  {
    state = digitalReadFast(Pin_Hall_Switch);
  }
  else if (HardwareVersionMinor == 3)
  {
    state = (IOE39CoresSenseHalls.digitalRead(IOE39_Hall_Switch_1)); // Can also read all inputs at once with .readGPIOAB()
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
