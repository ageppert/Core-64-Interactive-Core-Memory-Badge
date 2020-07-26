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

// #define USE_ANALOG_INPUT_HALL_SWITCH_2     // Tested and works fine.

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
uint32_t ButtonState(uint8_t button_number, uint32_t clear_duration) { // send a 1 or more to clear, 0 to use normally)
  static uint32_t lasttime;
  static uint32_t thistime = 0;
  static uint32_t delta = 0;
  static uint32_t duration_b1 = 0;  // Button 1 duration ON
  static uint32_t duration_b2 = 0;  // Button 2 duration ON
  static uint32_t duration_b3 = 0;  // Button 3 duration ON
  static uint32_t duration_b4 = 0;  // Button 4 duration ON
  static uint8_t  state_b1 = 0;
  static uint8_t  state_b2 = 0;
  static uint8_t  state_b3 = 0;
  static uint8_t  state_b4 = 0;
  static uint8_t  state_test_b1 = 0;
  static uint8_t  state_test_b2 = 0;
  static uint8_t  state_test_b3 = 0;
  static uint8_t  state_test_b4 = 0;
  static uint16_t AnalogLevel = 0;

  if(clear_duration == 1) { duration_b1 = 0 ;}

  thistime = millis();
  delta = thistime - lasttime ;

  if (HardwareVersionMinor == 2)
  {
    state_b1 = digitalReadFast(Pin_Hall_Switch);
  }
  else if (HardwareVersionMinor == 3)
  {
    #ifdef USE_ANALOG_INPUT_HALL_SWITCH_2
    AnalogLevel = analogRead(Pin_v030_Hall_Switch_2);
    if(AnalogLevel <= 512) {state_b2 = 0;}
    else {state_b2 = 1;}
    #else
    // TO DO: Why do I have to read these twice in a row to get a good read?
    // TO DO: Read all inputs at once with .readGPIOAB()
    state_test_b1 = (IOE39CoresSenseHalls.digitalRead(IOE39_Hall_Switch_1));
    state_b1 = (IOE39CoresSenseHalls.digitalRead(IOE39_Hall_Switch_1));
    // state_test_b2 = (IOE39CoresSenseHalls.digitalRead(IOE39_Hall_Switch_2));
    state_b2 = (IOE39CoresSenseHalls.digitalRead(IOE39_Hall_Switch_2));
    // state_test_b3 = (IOE39CoresSenseHalls.digitalRead(IOE39_Hall_Switch_3));
    state_b3 = (IOE39CoresSenseHalls.digitalRead(IOE39_Hall_Switch_3));
    // state_test_b4 = (IOE39CoresSenseHalls.digitalRead(IOE39_Hall_Switch_4));
    state_b4 = (IOE39CoresSenseHalls.digitalRead(IOE39_Hall_Switch_4));
    #endif
    // Serial.print(state_test);
    // Serial.println(state);
   }

  if(state_b1 != 1) { duration_b1 = duration_b1 + delta ; }
  else { duration_b1 = 0; }
  if(state_b2 != 1) { duration_b2 = duration_b2 + delta ; }
  else { duration_b2 = 0; }
  if(state_b3 != 1) { duration_b3 = duration_b3 + delta ; }
  else { duration_b3 = 0; }
  if(state_b4 != 1) { duration_b4 = duration_b4 + delta ; }
  else { duration_b4 = 0; }
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
  
  switch (button_number) {
    case 1:
      return duration_b1; // in ms
      break;
    case 2:
      return duration_b2; // in ms
      break;
    case 3:
      return duration_b3; // in ms
      break;
    case 4:
      return duration_b4; // in ms
      break;
    default:
      Serial.println("Invalid Button");
      break;
  }


}
