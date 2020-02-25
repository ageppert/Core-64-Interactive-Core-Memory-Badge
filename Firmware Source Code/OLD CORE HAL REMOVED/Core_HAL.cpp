#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "Core_HAL.h"
#include "Core_Driver.h"

void AllDriveIoSafe() {
  // MatrixEnableTransistorInactive();
  MatrixDriveTransistorsInactive();
  // MatrixEnableTransistorActive();     // Discharge any current left in the driver system
  // MatrixEnableTransistorInactive();
}

void AllDriveIoReadAndStore() {

}

void AllDriveIoRecallAndWrite() {

}

void AllDriveIoSetBit(uint8_t bit) {
  MatrixDriveTransistorsInactive();
  if      (bit < 8 ) { SetRowAndCol(0, bit    ); }
  else if (bit < 16) { SetRowAndCol(1,(bit-8 )); }
  else if (bit < 24) { SetRowAndCol(2,(bit-16)); }
  else if (bit < 32) { SetRowAndCol(3,(bit-24)); }
  else if (bit < 40) { SetRowAndCol(4,(bit-32)); }
  else if (bit < 48) { SetRowAndCol(5,(bit-40)); }
  else if (bit < 56) { SetRowAndCol(6,(bit-48)); }
  else if (bit < 64) { SetRowAndCol(7,(bit-56)); }
}

void AllDriveIoClearBit(uint8_t bit) {
  MatrixDriveTransistorsInactive();
  if      (bit < 8 ) { ClearRowAndCol(0, bit    ); }
  else if (bit < 16) { ClearRowAndCol(1,(bit-8 )); }
  else if (bit < 24) { ClearRowAndCol(2,(bit-16)); }
  else if (bit < 32) { ClearRowAndCol(3,(bit-24)); }
  else if (bit < 40) { ClearRowAndCol(4,(bit-32)); }
  else if (bit < 48) { ClearRowAndCol(5,(bit-40)); }
  else if (bit < 56) { ClearRowAndCol(6,(bit-48)); }
  else if (bit < 64) { ClearRowAndCol(7,(bit-56)); }
}

void AllDriveIoEnable() {
  MatrixEnableTransistorActive();
}

void AllDriveIoDisable() {
  MatrixEnableTransistorInactive();
}

bool CoreStateChangeFlag(bool clearFlag) {                    // Send this function a 0 to poll it, 1 to clear the flag
  static bool CoreStateChangeFlag = 0;
  if (SenseWirePulse() == true) { CoreStateChangeFlag = 1; }
  if (clearFlag == true) { CoreStateChangeFlag = 0; }           // Override detected state when user requests to clear the flag
  return CoreStateChangeFlag;
}

void TracingPulses(uint8_t numberOfPulses) {
  for (uint8_t i = 1; i <= numberOfPulses; i++) {
    tempDebugPin25Twiddle ();
  }
}

void DebugWithReedSwitchOutput() {
  tempDebugPin25OutputMode();
}

void DebugWithReedSwitchInput() {
  tempDebugPin25InputMode();
}

/*
// Defines the 4 transistors states required to set corresponding bit. Each row correspondes to bits 0 to 63.
// Each row is sequence of 4 matrix drive line numbers, each followed by 0 or 1 digital output to the transistor on that drive line.
uint8_t CoreMemoryMatrixDriveSetBitTransistors[][8] = {
  { 5,0,2,1, 13,0,18,1}
};

// Defines the 8 transistors states required to clear corresponding bit. Each row correspondes to bits 0 to 63.
uint8_t CoreMemoryMatrixDriveClearBitTransistors[][8] = {
  { 6,1,1,0, 14,1,17,0}
};

void oldCoreWriteBit(uint8_t bit, bool value) {
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
  */
