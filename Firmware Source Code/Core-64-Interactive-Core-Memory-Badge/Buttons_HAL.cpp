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
#ifdef HALL_SENSOR_ENABLE
  #include "src/Si7210/si7210.h"
  #include "src/Si7210/si7210_defs.h"
#endif // HALL_SENSOR_ENABLE

// #define USE_ANALOG_INPUT_HALL_SWITCH_2     // Tested and works fine.

#ifdef HALL_SENSOR_ENABLE
  si7210_status_t rslt = SI7210_E_DEV_NOT_FOUND;  // Unexpected return from the sensor library, making sure it returns something other than 99

  si7210_status_t usr_i2c_read(uint8_t dev_id, uint8_t reg_addr, uint8_t *data, uint16_t len)
  {
      si7210_status_t rslt = SI7210_OK;

      /* User implemented I2C read function */
      // Serial.print("usr_i2c_read dev_id:     ");
      // Serial.println(dev_id,HEX);   // print the reading
      Wire.beginTransmission(dev_id);
      Wire.write(reg_addr);
      Wire.endTransmission();
      Wire.requestFrom(dev_id, len);      // Assuming len is 1 because si7210.c only sends 1's when I search for "dev->read"
      delay(1);
      *data = (uint8_t)Wire.read();
      // DEBUG
      // Serial.print("usr_i2c_read:     ");
      // Serial.println(*data,DEC);   // print the reading

      return rslt;
  }

  si7210_status_t usr_i2c_write(uint8_t dev_id, uint8_t reg_addr, uint8_t *data, uint16_t len)
  {
      si7210_status_t rslt = SI7210_OK;

      /* User implemented I2C write function */
      Wire.beginTransmission(dev_id);
      Wire.write(reg_addr);
      Wire.write(*data);                // Assuming len is 1 because si7210.c only sends 1's when I search for "dev->write"
      Wire.endTransmission();
      // DEBUG
      // Serial.print("usr_i2c_write:");
      // Serial.println(*data,DEC);
      
      return rslt;
  }

  void usr_delay_ms(uint32_t period_ms)
  {
      delay(period_ms);
  }

  si7210_dev_t HallSensor1 = {
      SI7210_ADDRESS_0,
      usr_i2c_read,
      usr_i2c_write,
      usr_delay_ms
  };
#endif // HALL_SENSOR_ENABLE


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
    #ifdef HALL_SENSOR_ENABLE
      if((rslt = si7210_init(&HallSensor1)) != SI7210_OK)
          {
            Serial.print("Init Result Code Not OK: ");
            Serial.println(rslt,DEC);
            //return rslt;
          }

      HallSensor1.settings.range        = SI7210_20mT;
      HallSensor1.settings.compensation = SI7210_COMPENSATION_TEMP_NEO;
      HallSensor1.settings.output_pin   = SI7210_OUTPUT_PIN_HIGH;
       
      if((rslt = si7210_set_sensor_settings(&HallSensor1)) != SI7210_OK)
          {
            Serial.print("Set Sensor Settings Result Code Not OK: ");
            Serial.println(rslt,DEC);
            //return rslt;
          }

      if(rslt == SI7210_OK)
      {
          Serial.print("Set Sensor Settings Result Code OK: ");
          Serial.println(rslt,DEC);
          float field_strength;
          float temperature;

          /* Obtain field strength reading from device */
          si7210_get_field_strength(&HallSensor1, &field_strength);

          /* Obtain a temperature reading from the device */
          si7210_get_temperature(&HallSensor1, &temperature);

          Serial.print("Field / Temperature: ");
          Serial.print(field_strength);
          Serial.print(" / ");
          Serial.println(temperature);
      }

      rslt = si7210_check(&HallSensor1);
      Serial.print("SENSOR CHECK Result Code: ");
      Serial.println(rslt,DEC);

      rslt = si7210_self_test(&HallSensor1);
      Serial.print("Self test Result Code: ");
      Serial.println(rslt,DEC);

    #endif // HALL_SENSOR_ENABLE
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
  // static uint8_t  state_test_b2 = 0;
  // static uint8_t  state_test_b3 = 0;
  // static uint8_t  state_test_b4 = 0;
  #ifdef USE_ANALOG_INPUT_HALL_SWITCH_2
    static uint16_t AnalogLevel = 0;
  #endif

  if(clear_duration == 1) { duration_b1 = 0 ;}

  thistime = millis();
  delta = thistime - lasttime ;

  if (HardwareVersionMinor == 2)
  {
    state_b1 = digitalReadFast(Pin_Hall_Switch);
  }
  else if (HardwareVersionMinor == 3)
  {
    #ifdef HALL_SENSOR_ENABLE
          
          float field_strength;
          float temperature;
          si7210_get_field_strength(&HallSensor1, &field_strength);
          si7210_get_temperature(&HallSensor1, &temperature);
          Serial.print("Field / Temperature: ");
          Serial.print(field_strength);
          Serial.print(" / ");
          Serial.println(temperature);
          
    #endif // HALL_SENSOR_ENABLE

    #ifdef USE_ANALOG_INPUT_HALL_SWITCH_2
    AnalogLevel = analogRead(Pin_v030_Hall_Switch_2);
    if(AnalogLevel <= 512) {state_b2 = 0;}
    else {state_b2 = 1;}
    #else
    // TO DO: Why do I have to read  twice in a row to get a good read for the first one?
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
