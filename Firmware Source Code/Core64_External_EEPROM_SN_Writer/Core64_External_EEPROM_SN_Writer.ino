/*  Core64/c Hardware Identification - External EEPROM on the Logic Board
 *   Andy Geppert, April 7, 2021
 *    Version 2 (update Hardware ID Format Type if this changes)
 *      First and second pages, bytes 0-31, provides unique ID (Serial Number) and baseline version info for each board
 *      Third and fourth pages, bytes 32-63, are reserved for custom configuration data used when hacking Core64 hardware
      Version 3
        Add Core64c designation in S/N by starting with 1XXXXX, and defined Model # 128 as first Core64c prototype.
        Still compatible with the same layout as Version 2.
 *  User can use other pages as desired. 
 *  MSB first, LSB last
*/

/*
  From https://www.hobbytronics.co.uk/arduino-external-eeprom
  Open output window at 115200bps
  For page write tutorial, adapt https://www.hobbytronics.co.uk/eeprom-page-write
*/

#include <Wire.h>    

#define CORE64_V0_5_BETA_KIT

#if defined CORE64_V0_5_BETA_KIT
  #define EEPROM_ST_M24C02_2KBIT
#else
  #define EEPROM_ST_M24C01_1KBIT
#endif

#ifdef EEPROM_ST_M24C01_1KBIT
  #define EEPROM_ADDRESS    0b1010111       // 0b1010+A2_A1_A0 : Core64 BOARD ID EEPROM is 0x57 (87 dec) 1010+111
  #define MEM_SIZE_BYTES          128
  #define PAGE_SIZE_BYTES          16
  #define MAX_WRITE_TIME_MS         5
#endif

#ifdef EEPROM_ST_M24C02_2KBIT
  #define EEPROM_ADDRESS    0b1010111       // 0b1010+A2_A1_A0 : Core64 BOARD ID EEPROM is 0x57 (87 dec) 1010+111
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
uint8_t StringToWrite[string_len] = {                   
// Start Byte # (# Bytes) Description test is below the assigned EEPROM value

// PAGE 1&2 (32 BYTES) UNIQUE IDENTIFICATION
              1,0,0,0,0,1,                                            
/*  000  ( 6) SERIAL NUMBER:      Each byte is a decimal value of a 6 digit decimal number
                                  0XXXXX = Core64 Logic Boards
                                  1XXXXX = Core64c Logic Boards                           */
              21,6,15,                                             
/*  006  ( 3) Born on Date:       Year, Month, Day                                          */
              0, 2, 0,                                              
/*  009  ( 3) Born Version PCBA:  Major.Minor.Revision                                  */
              1,                                                    
/*  012  ( 1) Manufacturer ID:    0,1 = Andy!                                            */
              3,                                                    
/*  013  ( 1) Hardware Table Format: Version # (identifies this whole table configuration) */
              0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,            
/*  014  (17) Owner name:         Conventional 8 bit ASCII values                            */
              0,                                              
/*  031  ( 1) Page 1&2 Checksum:  XOR TBD                                                    */

// PAGE 3&4 (32 BYTES) HARDWARE CONFIGURATION
// Hardware Configuration use is intended to specify the as-shipped hardware configuration so the firmware can operate accordingly.
// Memory Location #, configuration # is 8-bit value. Value 0 = not applicable/present/defined. 
              128,
/*  032,      MODEL:            1 = Core64 Beta Kit
                                2 = Core64 Pre-Production                                             
                              128 => Core64c protoype, V0.2.0, without modification                    */
              2,
/*  033,      LB EEPROM:        1 = M24C01, 128 Bytes
                                2 => M24C02, 256 BYTES                                                */
              2,
/*  034,      POWER:            1 = USB 5V
                                2 => 4x "AAA" Generic Alkalines "stock config"
                                3 = 4x "AAA" Long life lithium primary
                                4 = 4x "AAA" NiMh
                                5 = 3x "AA" generic
                                6 = 3x "AA" long life lithium primary
                                7 = 3x "AA" NiMh
                                8 = 1S LiPo
                                9 = 1S LiFe
                               10 = 1S LiIon                                                */
              1,
/*  035,      CORE MEMORY:      1 => Stock, single 8x8
                                2 = Full stack of eight 8x8 planes                                                */
              1,
/*  036,      HALL SENSORS:     1 => Hall Sensor SI7210 I2C 0x30-0x33
                                2 = Hall Switch TCS40DPR.LF (Using CP5-8 pins SJ to HS1-4)                                                */
              1,
/*  037,      AMBIENT LIGHT:    1 = LTR-303 at 0x29
                                2 = LTR-329 at 0x29
                                3 = BH1730FVC-TR at 0x29                                                */
              1,
/*  038,      SAO PORT X1:      1 => fully accessible I2C and 2 GPIO pins.
                                2 = limited access, I2C only.                                                */
              1,
/*  039,      SAO PORT X2:      1 => fully accessible I2C and 2 GPIO pins
                                2 = limited access, I2C only                                                */
              1,
/*  040,      GPIO#1:           1 => Available generic use
                                2 = Test config                                                */
              1,
/*  041,      GPIO#2:           1 => Available generic use
                                2 = Test config                                                */
              1,
/*  042,      CP1-8 PINS:       1 => 1,2 used by SAO#2, 3-8 available
                                2 = 1-8 used by 8 core planes                                                */
              3,
/*  043,      LED Array:        1 = Pimoroni Unicorn Hat 8x8 "NeoPixels"
                                2 = Core64 LED MATRIX WS2813B-B
                                3 => Core64 LED MATRIX WS2813C                                                */
              0,
/*  044,      NEON PIXELS:      1 = SPI w/o CS, connected to SPI TFT LCD port                                                */
              0,
/*  045,      LCD:              1 = color SPI 3.2"
                                2 = color SPI ???                                                */
              0,
/*  046,      OLED Display:     1 = monochrome I2C 128x64
                                2 = color SPI
                                3 = TeensyView 128x32                                                */
              0,
/*  047,      SD CARD:          1 = Connected to Dedicated SD Card Expansion Header
                                2 = Connected to LCD Header
                                3 = Connected to OLED Header                                                */
              1,
/*  048,      QWIIC PORT:       1 => available                                                */
              0,
/*  049,      IR COMM:          1 = some basic config TBD                                                */
              0,
/*  050,      NFMC:             1 = some basic config TBD                                                */
              0,
/*  051,      RTC READY:        1 = populated crystal and battery                                                */
              1,
/*  052,      CORE PATTERN:     1 => Core Alignment Normal bit 7 \ ... bit 0 /
                                2 = Core Alignment Opposite bit 7 / ... bit 0 \                                                */
              0,
/*  053,      not used yet                                                                                */
              0,
/*  054,      not used yet                                                                                */
              0,
/*  055,      not used yet                                                                                */
              0,
/*  056,      not used yet                                                                                */
              0,
/*  057,      not used yet                                                                                */
              0,
/*  058,      not used yet                                                                                */
              0,
/*  059,      not used yet                                                                                */
              0,
/*  060,      not used yet                                                                                */
              0,
/*  061,      not used yet                                                                                */
              0,
/*  062,      not used yet                                                                                */
              0
/*  063,      Page 3&4 XOR Checksum                                                                       */
// TO DO: Expand the reserved space another 32 bytes.
              };

void EEPROMExtWriteByte(int deviceaddress, unsigned int eeaddress, uint8_t data ) 
{
  Wire.beginTransmission(deviceaddress);
  Wire.write((int)(eeaddress));
  Wire.write(data);
  Wire.endTransmission();
  delay(MAX_WRITE_TIME_MS);
}
 
uint8_t EEPROMExtReadByte(int deviceaddress, unsigned int eeaddress ) 
{
  uint8_t rdata = 0xFF;
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
  delay(3000);
  Wire.begin();   

  Serial.println("Core64/c I2C EEPROM serial number and configuration writer.");
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
  for (uint16_t address=0; address < MEM_SIZE_BYTES; address++) 
  {
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
