#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "EEPROM_HAL.h"
#include <EEPROM.h>

void EEPROM_Setup() {
  // No setup is required with the Teensy LC and using the Arduino EEPROM library as the driver.
}


void EEPROM_Hardware_Version_Write(uint8_t address, uint8_t byte) {
  EEPROM.write(address, byte);
}

uint8_t EEPROM_Hardware_Version_Read(uint8_t address) {
  if (address > 1024)
  {
    return 0;
  }
  else
  {
    return (EEPROM.read(address));
  }
}
