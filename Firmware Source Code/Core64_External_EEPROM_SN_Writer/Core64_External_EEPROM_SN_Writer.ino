/*

  From https://www.hobbytronics.co.uk/arduino-external-eeprom
  Open output window at 115200bps
  For page write tutorial, adapt https://www.hobbytronics.co.uk/eeprom-page-write
*/

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
*/
const uint8_t string_len = 13;
uint8_t StringToWrite[string_len] = {  0,  0,  0,  0,  0,  2,         20,  7, 14,             0,  3,  0,           0 };

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

bool I2CDetectExternalEEPROM(uint8_t address) {
  bool presentnpresent = 0;
  Wire.beginTransmission(address);
  uint8_t error = Wire.endTransmission();
  if (error == 0) { presentnpresent = 1; }
  else { presentnpresent = 0; }
  return (presentnpresent);
}

void setup(void)
{
  Serial.begin(115200);
  delay(1500);
  Wire.begin();   

  Serial.println("I2C EEPROM example");
  Serial.print("EEPROM PresentnPresent: ");
  Serial.println(I2CDetectExternalEEPROM(EEPROM_ADDRESS),DEC);
  /*
  unsigned int address = 0;
  uint8_t myWrite = 44;
  EEPROMExtWriteByte(EEPROM_ADDRESS, address, myWrite);
  Serial.print("I write: ");
  Serial.println(myWrite, DEC);

  uint8_t myRead;
  myRead = EEPROMExtReadByte(EEPROM_ADDRESS, address);
  Serial.print("I read: ");
  Serial.println(myRead, DEC);
  */
}

void loop()
{
  /*
  // Write address locations 10-127 with 255-address, one byte at a time
  for (uint8_t address=10; address < MEM_SIZE_BYTES; address++) {
    uint8_t dataWrite = 0;
    dataWrite = 255-address;
    EEPROMExtWriteByte(EEPROM_ADDRESS, address, dataWrite);
  }
  */

  /*
        Write the serial number and hardware version
   */
  // TO DO: Calculate checksum
  StringToWrite[string_len-1] = 222;
  for (uint8_t address=0; address < string_len; address++) {
    uint8_t dataWrite = 0;
    dataWrite = StringToWrite[address];
    EEPROMExtWriteByte(EEPROM_ADDRESS, address, dataWrite);
  }

  for (uint8_t address=0; address < MEM_SIZE_BYTES; address++) {
    uint8_t dataRead = 0;
    dataRead =  EEPROMExtReadByte(EEPROM_ADDRESS, address);
    Serial.print(address);
    Serial.print(" ");
    Serial.println(dataRead,DEC);
  }
  while(1);
}
