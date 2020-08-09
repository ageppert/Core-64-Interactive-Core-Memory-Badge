#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif
#include "HardwareIOMap.h"
#include "Analog_Input_Test.h"
#include "Ambient_Light_Sensor.h"

#ifdef SDCARD_ENABLE
  #include "SD_Card_Manager.h"
  #include <SD.h>
  #include <SPI.h>

  // set up variables using the SD utility library functions:
  Sd2Card card;
  SdVolume volume;
  SdFile root;

  const int chipSelect = 10;  // BUILTIN_SDCARD;
  // Log file base name.  Must be six characters or less.
  #define FILE_BASE_NAME "Data"

  enum SDCardState
    {
      STATE_START_UP = 0,               //  0 
      STATE_CARD_DETECT,                //  1 
      STATE_CHECK_FILE_PRESENT,         //  2 
      STATE_CREATE_FILE,                //  3 
      STATE_APPEND_FILE,                //  4 
      STATE_WRITE_LINE,                 //  5 
      STATE_CLOSE_FILE,                 //  6
      STATE_ERROR                       //  7
    };
  static uint8_t SDCardState = STATE_START_UP;
  bool SDCardPresent = 0;     // Keep track of whether the card is present or not.
  
  // SD Card File Handling for Logging
  const uint8_t BASE_NAME_SIZE = sizeof(FILE_BASE_NAME) - 1;
  char fileName[13] = FILE_BASE_NAME "00.csv";
  // SdFile file;
  // Error messages stored in flash.
  // #define error(msg) sd.errorHalt(F(msg))



  void SDCardSetup()
  {
    if(HardwareVersionMinor==2)
      {return;}
    else
    {
      pinMode(PIN_SD_CD, INPUT_PULLUP);

      SPI.setMISO(12);
      SPI.setMOSI(11);
      SPI.setSCK(14);
      SPI.begin();                  //   <<<--- THE MISSING KEY TO MAKING THEY setCLK assignment work!!!

      Serial.print("\nInitializing SD card...");

  // see if the card is present and can be initialized:
  if (!SD.begin(chipSelect)) {
    Serial.println("Card failed, or not present");
    // don't do anything more:
    return;
  }
  Serial.println("card initialized.");

  /*
      // we'll use the initialization code from the utility libraries
      // since we're just testing if the card is working!
      if (!card.init(SPI_HALF_SPEED, chipSelect)) {
        Serial.println("initialization failed. Things to check:");
        Serial.println("* is a card inserted?");
        Serial.println("* is your wiring correct?");
        Serial.println("* did you change the chipSelect pin to match your shield or module?");
        if (digitalReadFast(PIN_SD_CD)==0)
         {
           SDCardPresent = 0; 
           Serial.println("SDCardPresent = 0");
         }
        return;
      } 
      else {
        Serial.println("Wiring is correct and a card is present.");
        if (digitalReadFast(PIN_SD_CD)==1)
        {
          SDCardPresent = 1;
          Serial.println("SDCardPresent = 1");
        }
      }

      // print the type of card
      Serial.print("\nCard type: ");
      switch(card.type()) {
        case SD_CARD_TYPE_SD1:
          Serial.println("SD1");
          break;
        case SD_CARD_TYPE_SD2:
          Serial.println("SD2");
          break;
        case SD_CARD_TYPE_SDHC:
          Serial.println("SDHC");
          break;
        default:
          Serial.println("Unknown");
      }

      // Now we will try to open the 'volume'/'partition' - it should be FAT16 or FAT32
      if (!volume.init(card)) {
        Serial.println("Could not find FAT16/FAT32 partition.\nMake sure you've formatted the card");
        return;
      }


      // print the type and size of the first FAT-type volume
      uint32_t volumesize;
      Serial.print("\nVolume type is FAT");
      Serial.println(volume.fatType(), DEC);
      Serial.println();
      
      volumesize = volume.blocksPerCluster();    // clusters are collections of blocks
      volumesize *= volume.clusterCount();       // we'll have a lot of clusters
      if (volumesize < 8388608ul) {
        Serial.print("Volume size (bytes): ");
        Serial.println(volumesize * 512);        // SD card blocks are always 512 bytes
      }
      Serial.print("Volume size (Kbytes): ");
      volumesize /= 2;
      Serial.println(volumesize);
      Serial.print("Volume size (Mbytes): ");
      volumesize /= 1024;
      Serial.println(volumesize);

      
      Serial.println("\nFiles found on the card (name, date and size in bytes): ");
      root.openRoot(volume);
      
      // list all files in the card with date and size
      root.ls(LS_R | LS_DATE | LS_SIZE);
*/
    }
  }

File dataFile = SD.open("datalog.txt", FILE_WRITE);


void SDCardWriteVoltageLine()
  {
    switch(SDCardState)
      {
      case STATE_START_UP:
        Serial.println("SDCardState START_UP");
        SDCardState = STATE_CARD_DETECT;
        break;

      case STATE_CARD_DETECT:
        Serial.println("SDCardState CARD_DETECT");
        if (digitalReadFast(PIN_SD_CD)==1)
        {
          SDCardPresent = 1;
          Serial.println("SDCardPresent = 1");
          SDCardState = STATE_CHECK_FILE_PRESENT;
        }
        else
        {
          SDCardPresent = 0;
          Serial.println("SDCardPresent = 0");
          SDCardState = STATE_START_UP;          
        }
        break;

      case STATE_CHECK_FILE_PRESENT:
        Serial.println("SDCardState CHECK_FILE_PRESENT");

        SDCardState = STATE_CREATE_FILE;          
        break;

      case STATE_CREATE_FILE:
        {
          Serial.println("SDCardState CREATE_FILE");
          static bool FirstTimeRun = 0;

          if (FirstTimeRun==0)
          {
            // make a string for assembling the data to log:
            String HeaderString = "";
            HeaderString += "Millis, Battery mV, brightness 8bit ***************"; 

            dataFile = SD.open("datalog.txt", FILE_WRITE);
            // if the file is available, write to it:
            if (dataFile) {
              dataFile.println(HeaderString);
              dataFile.close();
              // print to the serial port too:
              Serial.println(HeaderString);
            }  
            // if the file isn't open, pop up an error:
            else {
              Serial.println("error opening datalog.txt");
            }
            FirstTimeRun = 1;
          } 

  /*
          // Find an unused file name.
          if (BASE_NAME_SIZE > 6) {
            error("FILE_BASE_NAME too long");
          }
          while (sd.exists(fileName)) {
            if (fileName[BASE_NAME_SIZE + 1] != '9') {
              fileName[BASE_NAME_SIZE + 1]++;
            } else if (fileName[BASE_NAME_SIZE] != '9') {
              fileName[BASE_NAME_SIZE + 1] = '0';
              fileName[BASE_NAME_SIZE]++;
            } else {
              error("Can't create file name");
            }
          }
          if (!file.open(fileName, O_WRONLY | O_CREAT | O_EXCL)) {
            error("file.open");
          }
          Serial.print(F("Logging to: "));
          Serial.println(fileName);
  */
/*
          // make a string for assembling the data to log:
          String dataString = "";
          uint32_t timer = millis();
          uint16_t sensor = GetBatteryVoltagemV();
          uint8_t light = GetAmbientLightLevel8BIT();
          dataString += String(timer);
          dataString += ",";
          dataString += String(sensor);
          dataString += ",";
          dataString += String(light);

          dataFile = SD.open("datalog.txt", FILE_WRITE);
          // if the file is available, write to it:
          if (dataFile) {
            dataFile.println(dataString);
            dataFile.close();
            // print to the serial port too:
            Serial.println(dataString);
          }  
          // if the file isn't open, pop up an error:
          else {
            Serial.println("error opening datalog.txt");
          } 
*/

          SDCardState = STATE_WRITE_LINE;     
          break;
        }
      case STATE_APPEND_FILE:
        Serial.println("SDCardState APPEND_FILE");
/*
        // make a string for assembling the data to log:
        String dataString = "";
        uint16_t sensor = GetBatteryVoltagemV();
        dataString += String(sensor);

        dataFile = SD.open("datalog.txt", FILE_WRITE);
        // if the file is available, write to it:
        if (dataFile) {
          dataFile.println(dataString);
          dataFile.close();
          // print to the serial port too:
          Serial.println(dataString);
        }  
        // if the file isn't open, pop up an error:
        else {
          Serial.println("error opening datalog.txt");
        } 
*/
        break;

      case STATE_WRITE_LINE:
        {
          Serial.println("SDCardState WRITE_LINE");

          // make a string for assembling the data to log:
          String dataString = "";
          uint32_t timer = millis();
          uint16_t sensor = GetBatteryVoltagemV();
          uint8_t light = GetAmbientLightLevel8BIT();
          dataString += String(timer);
          dataString += ",";
          dataString += String(sensor);
          dataString += ",";
          dataString += String(light);

          dataFile = SD.open("datalog.txt", FILE_WRITE);
          // if the file is available, write to it:
          if (dataFile) {
            dataFile.println(dataString);
            dataFile.close();
            // print to the serial port too:
            Serial.println(dataString);
          }  
          // if the file isn't open, pop up an error:
          else {
            Serial.println("error opening datalog.txt");
          } 

        break;
        }
      case STATE_CLOSE_FILE:
        Serial.println("SDCardState CLOSE_FILE");

        break;

      case STATE_ERROR:
        Serial.println("SDCardState ERROR");

        break;

      default:
        Serial.println("USDCardState UNDEFINED");
        break;
      }

  }


  void SDCardVoltageLog(uint32_t UpdatePeriodms)
  {
    static uint32_t NowTime = 0;
    static uint32_t UpdateTimer = 0;
    NowTime = millis();
    if ((NowTime - UpdateTimer) >= UpdatePeriodms)
    {
      UpdateTimer = NowTime;
      SDCardWriteVoltageLine();                          
    }
  }

#else // SDCARD_ENABLE
  void SDCardSetup()
  {
  }
  void SDCardVoltageLog(uint32_t UpdatePeriodms)
  {
  }
#endif // SDCARD_ENABLE
