#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif
#include "HardwareIOMap.h"

#ifdef SDCARD_ENABLE
  #include "SD_Card_Manager.h"
  #include <SD.h>
  #include <SPI.h>

  // set up variables using the SD utility library functions:
  Sd2Card card;
  SdVolume volume;
  SdFile root;

  const int chipSelect = 10;  // BUILTIN_SDCARD;
  
  bool SDCardPresent = 0;     // Keep track of whether the card is present or not.

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
    }
  }

  void SDCardVoltageLog()
  {

  }

#else // SDCARD_ENABLE
  void SDCardSetup()
  {
  }
  void SDCardVoltageLog()
  {
  }
#endif // SDCARD_ENABLE
