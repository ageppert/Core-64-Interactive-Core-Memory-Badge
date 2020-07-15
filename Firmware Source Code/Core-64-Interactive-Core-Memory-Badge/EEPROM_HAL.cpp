#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "EEPROM_HAL.h"
#include <EEPROM.h>
#include <Wire.h>

#define EEPROM_ST_M24C01_1KBIT

#ifdef EEPROM_ST_M24C01_1KBIT
  #define EEPROM_ADDRESS    0b1010111       // 0b1010+A2_A1_A0): Core64 BOARD ID EEPROM is 0x57 (87 dec) 1010+111
  #define MEM_SIZE_BYTES          128
  #define PAGE_SIZE_BYTES          16
  #define MAX_WRITE_TIME_MS         5
#endif
/*  Core64 Serial Number Identification
 *  Provides unique ID for each board so they can identify each other and work together through NFMI
 *  First page, 16 Bytes, of 128 Bytes external EEPROM is reserved for this data.
 *  User can use all other pages as desired.
 *  MSB first, LSB last
                                     Serial Number (6)      |  Born on Date (3) |  Born as Version (3) | Checksum (1)
                          EXAMPLE = {  0,  0,  0,  0,  0,  2,         20,  7, 14,             0,  3,  0,           0 };
                          POSITION     0   1   2   3   4   5           6   7   8              9  10  11           12
*/

void EEPROM_Setup() {
  Wire.begin();   
  // No setup is required with the Teensy LC and using the Arduino EEPROM library as the driver.
  // Uses [emulated] EEPROM internal to Teensy LC, which is actually program memory set-aside to emulate EEPROM
}


void EEPROM_Hardware_Version_Write(uint8_t address, uint8_t byte) {
  EEPROM.write(address, byte);
}

uint8_t EEPROM_Hardware_Version_Read(uint8_t address) {
  if (address > 128)
  {
    return 0;
  }
  else
  {
    return (EEPROM.read(address));
  }
}

void EEPROMExtWriteByte(int deviceaddress, unsigned int eeaddress, byte data ) 
{
  Wire.beginTransmission(deviceaddress);
  Wire.write((int)(eeaddress));
  Wire.write(data);
  Wire.endTransmission();
  delay(MAX_WRITE_TIME_MS);
}
 
byte EEPROMExtReadByte(int deviceaddress, unsigned int eeaddress ) 
{
  byte rdata = 0xFF;
  Wire.beginTransmission(deviceaddress);
  Wire.write((int)(eeaddress));
  Wire.endTransmission();
  Wire.requestFrom(deviceaddress,1);
  if (Wire.available()) rdata = Wire.read();
  return rdata;
}

uint8_t EEPROMExtReadHardwareVersionMajor() {
  return (EEPROMExtReadByte(EEPROM_ADDRESS, 9));
}

uint8_t EEPROMExtReadHardwareVersionMinor() {
  return (EEPROMExtReadByte(EEPROM_ADDRESS, 10));
}

uint8_t EEPROMExtReadHardwareVersionPatch() {
  return (EEPROMExtReadByte(EEPROM_ADDRESS, 11));
}

uint32_t EEPROMExtReadSerialNumber() {
  uint32_t SerialNumberLocal = 0;
  SerialNumberLocal = EEPROMExtReadByte(EEPROM_ADDRESS, 5);
  SerialNumberLocal = SerialNumberLocal + (10 * EEPROMExtReadByte(EEPROM_ADDRESS, 4) );
  SerialNumberLocal = SerialNumberLocal + (100 * EEPROMExtReadByte(EEPROM_ADDRESS, 3) );
  SerialNumberLocal = SerialNumberLocal + (1000 * EEPROMExtReadByte(EEPROM_ADDRESS, 2) );
  SerialNumberLocal = SerialNumberLocal + (10000 * EEPROMExtReadByte(EEPROM_ADDRESS, 1) );
  SerialNumberLocal = SerialNumberLocal + (100000 * EEPROMExtReadByte(EEPROM_ADDRESS, 0) );
  return (SerialNumberLocal);
}


