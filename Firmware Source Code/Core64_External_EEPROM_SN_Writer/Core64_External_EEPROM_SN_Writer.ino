/*  Core64 Hardware Identification - External 128 Byte EEPROM
 *   Andy Geppert, April 7, 2021
 *    Version 2 (update Hardware ID Format Type if this changes)
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

// #define EEPROM_ST_M24C01_1KBIT
#define EEPROM_ST_M24C02_2KBIT

#ifdef EEPROM_ST_M24C01_1KBIT
  #define EEPROM_ADDRESS    0b1010111       // 0b1010+A2_A1_A0): Core64 BOARD ID EEPROM is 0x57 (87 dec) 1010+111
  #define MEM_SIZE_BYTES          128
  #define PAGE_SIZE_BYTES          16
  #define MAX_WRITE_TIME_MS         5
#endif

#ifdef EEPROM_ST_M24C02_2KBIT
  #define EEPROM_ADDRESS    0b1010111       // 0b1010+A2_A1_A0): Core64 BOARD ID EEPROM is 0x57 (87 dec) 1010+111
  #define MEM_SIZE_BYTES          256
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
  0,0,0,0,0,5,                                          // 0  ( 6) Serial Number  
  21, 3,20,                                             // 6  ( 3) Born on Date:  Year, Month, Day
  0, 5, 0,                                              // 9  ( 3) Born PCBA Version: Major.Minor.Revision
  1,                                                    // 12 ( 1) Manufacturer ID (0,1 = Andy!)
  2,                                                    // 13 ( 1) Hardware ID Format Type (identifies this whole table configuration)
  0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,            // 14 (17) Owner name
//   
  0,                                                    // 31 ( 1) Page 1&2 XOR Checksum (calculated below)

  0,0,0,0,0,0,0,0,                                      // 32 ( 8) Hardware configuration ...reserved...
  0,0,0,0,0,0,0,0,                                      // 40 ( 8) ...reserved...
  0,0,0,0,0,0,0,0,                                      // 48 ( 8) ...reserved...
  0,0,0,0,0,0,0,                                        // 56 ( 7) ...reserved
  0  };                                                 // 63 ( 1) Page 3&4 XOR Checksum (calculated below)

  // TO DO: Implement the table below and expand the reserved space another 32 bytes.

  /* Hardware Configuration use is intended to specify the as-shipped hardware configuration so the firmware can operate accordingly.
  // Hardware Item #, Version #, both 8-bit fields. Version 0 = not present. Example:
    101,  LB EEPROM:        1 = M24C01, 128 Bytes
                            2 = M24C02, 256 Bytes
    102,  POWER:            1 = Stock 4 "AAA" Generic Alkalines
                            2 = 4 "AAA" Long life lithium primary
                            3 = 3 "AA" generic
                            4 = 3 "AA" long life lithium primary
                            5 = 1S LiPo and mini charger
    103,  CORE MEMORY:      1 = Stock, single 8x8
                            2 = Full stack of eight 8x8 planes
    104,  HALL SENSORS:     1 = Hall Sensor SI7210 I2C 0x30-0x33
                            2 = Hall Switch TCS40DPR.LF (Using CP5-8 pins SJ to HS1-4)
    105,  AMBIENT LIGHT:    1 = LTR-329 at 0x29
                            2 = LTR-303 at 0x29
                            3 = BH1730FVC-TR
    106,  SAO PORT X2:      1 = fully accessible I2C and 2 GPIO pins.
                            2 = limited access, I2C only.
    107,  CP1-8 PINS:       1 = 1,2 used by SAO#2, 3-8 available.
                            2 = 1-8 used by 8 core planes.
    108,  LED Array:        1 = Pimoroni Unicorn Hat 8x8 NeoPixel style. 
                            2 = Core64 LED MATRIX.
    109,  NEON PIXELS:      1 = SPI w/o CS, connected to SPI TFT LCD port
    110,  LCD:              1 = color SPI 3.2"
                            2 = color SPI ???
    111,  OLED Display:     1 = monochrome I2C 128x64
                            2 = color SPI
                            3 = TeensyView 128x32
    112,  SD CARD:          1 = Dedicated SD Card Expansion Header
                            2 = connected to LCD Header
                            3 = connected to OLED Header
    113,  QWIIC PORT:       1 = available
                            2 = -
    114,  SAO PORT X1:      1 = fully accessible I2C and 2 GPIO pins.
                            2 = limited access, I2C only.
    115,  GPIO#1:           1 = Available generic use
                            2 = Test config
    116,  GPIO#2:           1 = Available generic use
                            2 = Test config
    117,  IR COMM:          1 = some basic config TBD
    118,  NFMC:             1 = some basic config TBD
    119,  RTC READY:        1 = populated crystal and battery
  */

void EEPROMExtWrite= Byte(int deviceaddress, unsigned int eeaddress, byte data ) 
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
