#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "HardwareIOMap.h"
#include "Core_Functions.h"

bool    CoreArrayMemory [8][8] = {
                                  {1,1,1,0,1,0,1,0},
                                  {1,0,0,0,1,0,1,0},
                                  {1,1,1,0,1,1,1,0},
                                  {1,0,1,0,0,0,1,0},
                                  {1,1,1,0,0,0,1,0},
                                  {0,0,0,0,0,0,0,0},
                                  {0,0,0,0,0,0,0,0},
                                  {0,0,0,0,0,0,0,0}  };
//bool    CoreArrayMemory [8][8] = {
//                                  {1,1,1,0,1,1,1,0},
//                                  {1,0,0,0,1,0,1,0},
//                                  {1,1,1,0,1,1,1,0},
//                                  {0,0,0,0,0,0,0,0},
//                                  {1,1,1,0,1,1,1,0},
//                                  {1,1,0,0,1,1,0,0},
//                                  {1,0,1,0,1,1,1,0},
//                                  {0,0,0,0,0,0,0,0}  };


// Defines the 4 transistors states required to set corresponding bit. Each row correspondes to bits 0 to 63.
// Each row is sequence of 4 matrix drive line numbers, each followed by 0 or 1 digital output to the transistor on that drive line.
uint8_t CoreMemoryMatrixDriveSetBitTransistors[][8] = {
  { 5,0,2,1, 13,0,18,1}
};

// Defines the 8 transistors states required to clear corresponding bit. Each row correspondes to bits 0 to 63.
uint8_t CoreMemoryMatrixDriveClearBitTransistors[][8] = {
  { 6,1,1,0, 14,1,17,0}
};

void CoreWriteBit(uint8_t bit, bool value) {
  digitalWriteFast(Pin_Write_Enable,LOW);
  if (value == 0) {
    for (uint8_t i = 0; i <= 6; i=i+2) {
      digitalWriteFast(CoreMemoryMatrixDriveClearBitTransistors[bit][i],CoreMemoryMatrixDriveClearBitTransistors[bit][i+1]);
    }
  }
  else {
    for (uint8_t i = 0; i <= 6; i=i+2) {
      digitalWriteFast(CoreMemoryMatrixDriveSetBitTransistors[bit][i],CoreMemoryMatrixDriveSetBitTransistors[bit][i+1]);
    }
  }
  digitalWriteFast(Pin_Write_Enable,HIGH);
  // Not sure how much delay is needed for the core to flip
  delay(5);
  //
  digitalWriteFast(Pin_Write_Enable,LOW);
  if (value == 0) {
    for (uint8_t i = 0; i <= 6; i=i+2) {
      digitalWriteFast(CoreMemoryMatrixDriveClearBitTransistors[bit][i],!(CoreMemoryMatrixDriveClearBitTransistors[bit][i+1]));
    }
  }
  else {
    for (uint8_t i = 0; i <= 6; i=i+2) {
      digitalWriteFast(CoreMemoryMatrixDriveSetBitTransistors[bit][i],!(CoreMemoryMatrixDriveSetBitTransistors[bit][i+1]));
    }
  }
  
}

void MatrixDriveTransistorsInactive() {
  // Set the enable and all the matrix lines to the safe state, all transistors inactive.
  for (uint8_t i = 1; i <= 20; i++) {
    digitalWriteFast(PinMatrixDrive[i],PinMatrixDriveInactiveState[i]);
  }
}

void CoreSetup() {
  MatrixDriveTransistorsInactive();
}

void CoreUpdate() {
  static uint32_t NowTimems = 0;
  static uint32_t CoreUpdateTimerms = 0;
  static uint32_t CoreUpdatePeriodms = 100; // ms
  NowTimems = millis();
  if ((NowTimems - CoreUpdateTimerms) >= CoreUpdatePeriodms)
  {
    CoreUpdateTimerms = NowTimems;
    // CoreWriteBit(0,PULSE_STATE);
  }
  
}
