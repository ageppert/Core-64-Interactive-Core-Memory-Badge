/*  Core64 Hardware Identification - External 128 Byte EEPROM
 *   Andy Geppert, January 9, 2021
 *    First and second pages, bytes 0-31, provides unique ID (Serial Number) and baseline version info for each board
 *    Third and fourth pages, bytes 32-63, are reserved for custom configuration data used when hacking Core64 hardware
 *  User can use other pages as desired. 
 *  MSB first, LSB last
*/

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

const uint8_t string_len = 64;
const uint8_t owner_name_start = 14;
const uint8_t owner_name_len = 17;
const uint8_t page_one_two_checksum_position = 31;
const uint8_t page_three_four_checksum_position = 63;
uint8_t checksum = 0;
uint8_t StringToWrite[string_len] = {                   // Start Byte # (# Bytes) Description
  0,0,0,0,0,4,                                          // 0  ( 6) Serial Number  
  21, 1, 1,                                             // 6  ( 3) Born on Date:  Year, Month, Day
  0, 4, 0,                                              // 9  ( 3) Born as Version: Major.Minor.Revision
  0,                                                    // 12 ( 1) Manufacturer ID
  1,                                                    // 13 ( 1) Hardware ID Format Version
  80,73,69,82,82,69,0,0, 0,0,0,0,0,0,0,0, 0,            // 14 (17) Owner name
// P  I  E  R  R  E  
  0,                                                    // 31 ( 1) Page 1&2 XOR Checksum (calculated below)

  0,0,0,0,0,0,0,0,                                      // 32 ( 8) Hardware configuration reserved
  0,0,0,0,0,0,0,0,                                      // 40 ( 8) reserved
  0,0,0,0,0,0,0,0,                                      // 48 ( 8) reserved
  0,0,0,0,0,0,0,                                        // 56 ( 7) reserved
  0  };                                                 // 63 ( 1) Page 3&4 XOR Checksum (calculated below)

  // TO DO: Implement the table below and expand the reserved space another 32 bytes.

  /* Hardware Configuration use is intended to specify the as-shipped hardware configuration so the firmware can operate accordingly.
  // Hardware Item #, Version #, both 8-bit fields. Example:
      0, 1  LB EEPROM:      V1 M24C01, 128 Bytes
                            V2 -
      1, 1  POWER:          V1 Stock 4 "AAA" Generic Alkalines
                            V2 4 "AAA" Long life lithium primary
                            V3 3 "AA" generic
                            V4 3 "AA" long life lithium primary
                            V5 1S LiPo and mini charger
      2, 1  CORE MEMORY:    V1 A single Standard 8x8
                            V2 A full stack of 8 planes
      3, 1  HALL SENSORS:   V1 SILABS I2C 0x30-0x33
                            V2 Alternate
      4, 1  AMBIENT LIGHT:  V1 LTR-329 at 0x29
                            V2 Alternate
      5, 1  SAO PORT X2:    V1 fully accessible I2C and 2 GPIO pins.
                            V2 limited access, I2C only.
      6, 1  CP1-8 PINS:     V1 1,2 used by SAO#2, 3-8 available.
                            V2 1-8 used by 8 core planes.
      7, 1  LED Array:      V1 Pimoroni Unicorn Hat 8x8 NeoPixel style. 
                            V2 could be Unicorn hat HD.
      8, 1  NEON PIXELS:    V1 SPI w/o CS, connected to SPI TFT LCD port
                            V2 -
      9, 1  LCD:            V1 color SPI 3.2"
                            V2 color SPI ???
     10, 1  OLED Display:   V1 monochrome I2C 128x64
                            V2 color SPI
                            V3 TeensyView 128x32
     11, 1  SD CARD:        V1 Dedicated SD Card Expansion Header
                            V2 connected to LCD Header
                            V3 connected to OLED Header
     12, 1  QWIIC PORT:     V1 open
                            V2 -
     13, 1  SAO PORT X1:    V1 fully accessible I2C and 2 GPIO pins.
                            V2 limited access, I2C only.
     14, 1  GPIO#1:         V1 Available generic use
                            V2 Test config
     15, 1  GPIO#2:         V1 Available generic use
                            V2 Test config
     16, 1  IR COMM:        V0 not populated
                            V1 some basic config TBD
     17, 1  NFMC:           V0 not populated
                            V1 some basic config TBD
     18, 1  RTC READY:      V0 not populated
                            V1 populated crystal and battery
  */

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
}

void loop()
{
  /*
        Calculate checksums
        Tested with: https://toolslick.com/math/bitwise/xor-calculator
  */
  // Hard coded for bytes 0-30 with checksum stored in byte 31
  checksum = StringToWrite[0];
  for (uint8_t address = 0; address < 30; address++) {
    checksum = checksum ^ StringToWrite[address+1];
    StringToWrite[page_one_two_checksum_position] = checksum;
  }
  // Hard coded for bytes 32-62 with checksum stored in byte 63
  checksum = StringToWrite[32];
  for (uint8_t address = 32; address < 62; address++) {
    checksum = checksum ^ StringToWrite[address+1];
    StringToWrite[page_three_four_checksum_position] = checksum;
  }

  /*
        Write the data
  */
  for (uint8_t address=0; address < string_len; address++) {
    uint8_t dataWrite = 0;
    dataWrite = StringToWrite[address];
    EEPROMExtWriteByte(EEPROM_ADDRESS, address, dataWrite);
  }

  /*
        Read the name and print it to the serial port
  */
  Serial.println();
  Serial.print("Owner name: ");
  for (uint8_t address=14; address < (owner_name_start + owner_name_len); address++) {
    uint8_t dataRead = 0;
    dataRead =  EEPROMExtReadByte(EEPROM_ADDRESS, address);
    Serial.write(dataRead);
  }
  Serial.println();

  /*
        Read and print the data to the serial port
  */
  for (uint8_t address=0; address < MEM_SIZE_BYTES; address++) {
    uint8_t dataRead = 0;
    dataRead =  EEPROMExtReadByte(EEPROM_ADDRESS, address);
    Serial.print(address);
    Serial.print(" ");
    Serial.println(dataRead,DEC);
  }
  
  /*
        End, infinite loop
  */
  while(1);
}
