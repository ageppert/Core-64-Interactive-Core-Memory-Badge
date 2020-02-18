#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "Core_HAL.h"
#include "Core_Driver.h" 
#include "CharacterMap.h"

// The CoreArrayMemory may not be written to and read from outside of the Core API.
// The CoreArrayMemory is used as a buffer between external API calls and the real state of the core memory.
// The CoreArrayMemory is only accurate after all real core memory bits have been read once.
// It us up to the user to request CoreReadArray() in order provide an initial update to the CoreArrayMemory array.
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

void CoreSetup() {
  AllDriveIoSafe();
}

void CoreClearAll() {
  for (uint8_t i = 0; i <64; i++) { 
    Core_Mem_Bit_Write(i,0); 
  }
  for (uint8_t x=1; x<=7; x++) {
    for (uint8_t y=0; y<=7; y++) {
      CoreArrayMemory [y][x] = 0;
    }
  }
}

void CoreSetAll() {
  for (uint8_t i = 0; i <64; i++) {
    Core_Mem_Bit_Write(i,1);
  }
}

void CoreZeroClear() {
  AllDriveIoSafe();                             
  // suspect the logic in this is wrong
  //  AllDriveIoClearBit(0);
  // So I'll try it more manually to the pins I think are correct.
  ClearRowAndCol(0,0); // testing, confirmed this or the logic below it is still wrong.
  // ClearRowZeroAndColZero(); // testing, 
  AllDriveIoEnable();                           
  delayMicroseconds(2);                         
  AllDriveIoDisable();                          
  AllDriveIoSafe();                             
}

void CoreZeroSet() {
  AllDriveIoSafe();                             
    AllDriveIoSetBit(0);
  AllDriveIoEnable();                           
  delayMicroseconds(2);                         
  AllDriveIoDisable();                          
  AllDriveIoSafe();                             
}

void CoreOneClear() {
  AllDriveIoSafe();                             
   AllDriveIoClearBit(1);
  AllDriveIoEnable();                           
  delayMicroseconds(2);                         
  AllDriveIoDisable();                          
  AllDriveIoSafe();                             
}

void CoreOneSet() {
  AllDriveIoSafe();                             
    AllDriveIoSetBit(1);
  AllDriveIoEnable();                           
  delayMicroseconds(2);                         
  AllDriveIoDisable();                          
  AllDriveIoSafe();                             
}
/*
void CoreWriteBit(uint8_t bit, bool value) {
  //DebugWithReedSwitchOutput();                  // T -13 us
   //TracingPulses(1);                             // T   2 us  
  AllDriveIoSafe();                             // T   0 us  CCL/CCH drops from 0.0 to -.4 V. * Why do they go negative by ~Vce?
  // AllDriveIoReadAndStore();
  AllDriveIoEnable();                           // Might need to set this before matrix lines for more stable switching.
  if (value == 1) { AllDriveIoSetBit(bit); }    // T  15/16 us  Toward the end of this time CCL/CCH step up to 3.0 and 3.3 V.
  else { AllDriveIoClearBit(bit); } 
   //TracingPulses(2);                             // T  17 us
  //AllDriveIoEnable();                           // T  18 us  CCL/CCH drops ~1 V ??? Why not zero?
  delayMicroseconds(5);                         //           Jussi 2 us for write pulse, with the last us showing sense pulse.
  // AllDriveIoDisable();                          // T  21 us  CCL/CCH returns to 3.3V, then down to 3.1, then 2.9
  // AllDriveIoRecallAndWrite();
  // AllDriveIoSafe();                             // T  33 us  CCL/CCH drops to 0V for 500 ns (during enable), then down to -0.4 V again. ????
  AllDriveIoDisable();
   //TracingPulses(3);                             // T  34 us  ~ 5ms after, CCL/CCH settles to 0V. Would be nice to dissipate this faster.
  //DebugWithReedSwitchInput();
}
*/

void Core_Mem_Bit_Write(uint8_t bit, bool value) {
  // Turn off all of the matrix signals
  MatrixEnableTransistorInactive();                 // Make sure the whole matrix is off by de-activating the enable transistor
  MatrixDriveTransistorsInactive();                 // De-activate all of the individual matrix drive transistors
  // Prepare to activate the matrix drive transistors
  MatrixEnableTransistorActive();                   // Enable the matrix drive transistor
  // Activate the selected matrix drive transistors according to bit position and the set/clear request
  if (value == 1) { AllDriveIoSetBit(bit); } 
  else { AllDriveIoClearBit(bit); }
  delayMicroseconds(3);  
  // Turn off all of the matrix signals
  MatrixDriveTransistorsInactive();                 // De-activate all of the individual matrix drive transistors
  MatrixEnableTransistorInactive();                 // Make sure the whole matrix is off by de-activating the enable transistor
}


bool CoreReadBit(uint8_t bit) {
  static bool value;
  DebugWithReedSwitchOutput();
  AllDriveIoSafe();
  AllDriveIoSetBit(bit);
  TracingPulses(1);
  AllDriveIoEnable();
  // loop around this to detect it - not sure on timing needs
  for (uint8_t i = 0; i <=4; i++)
  {
    CoreStateChangeFlag(0); 
  }
  AllDriveIoDisable(); 
  AllDriveIoSafe();
  TracingPulses(2);
  value = 1;
  if (CoreStateChangeFlag(0) == true)
  {
    // CoreWriteBit(bit,0);
    AllDriveIoClearBit(bit);
    AllDriveIoEnable();  
    delayMicroseconds(3);
    AllDriveIoDisable();
    AllDriveIoSafe(); 
    value = 0;
  }
  CoreStateChangeFlag(1);
  return (value);
}

void CoreWriteLongInt(uint64_t value) {

}

uint64_t CoreReadLongInt() {
  static bool value;
  return (value);
}

void CoreWriteArray() {     // TO DO Add a pointer to the array

}

uint64_t CoreReadArray() {  // TO DO Add a pointer to the array
  uint64_t value = 0;
  bool bitValue = 0;
  for (uint8_t x=0; x<=7; x++) {
    for (uint8_t y=0; y<=7; y++) {
      bitValue = CoreReadBit( (y*8) + x );
      CoreArrayMemory [y][x] = !bitValue;     // For drawing on the screen, invert the bitValue so pixels are on because a read assumes write of 1 (setting core)
      value = value + bitValue;
      value = value << 1;
    }
  }
  return (value);
}

void ScrollTextToCoreMemory() {
  static unsigned long UpdatePeriodms = 100;  
  static unsigned long NowTime = 0;
  static unsigned long UpdateTimer = 0;

  static uint8_t stringPosition = 0;
  static uint8_t stringLength = 15; // [space] I [heart] C O R E [space] M E M O R Y !
  static uint8_t characterColumn = 0;
  bool newBit = 0; 

  NowTime = millis();
  // Is it time to scroll again?
  if ((NowTime - UpdateTimer) >= UpdatePeriodms)
  {
    UpdateTimer = NowTime;
    // Shift existing core memory data to the left. (leftmost column is 0, rightmost is 7)
      for (uint8_t x=1; x<=7; x++)
      {
        for (uint8_t y=0; y<=7; y++)
        {
          CoreArrayMemory [y][x-1] = CoreArrayMemory [y][x];
        }
      }
    // Bring in a new column on right edge.
      if (characterColumn == 8) {characterColumn = 0; stringPosition++;}
    // Out of characters? Go back to the beginning and scroll again.
      if (stringPosition == stringLength) { stringPosition = 0; characterColumn = 0; }
      for (uint8_t y=0; y<=7; y++) // iterate through the rows
      {
        newBit = pgm_read_byte(&(character_font_wide[stringPosition][y][characterColumn]));
        CoreArrayMemory [y][7] = newBit;
      }
      characterColumn++; // prepare for next column
  }
}

void WriteOneBitToCoreMemory(uint8_t bit, bool value) {
  for (uint8_t x=0; x<=7; x++)
  {
    for (uint8_t y=0; y<=7; y++)
    {
      CoreArrayMemory [y][x] = 0;
    }
  }
  if      (bit < 8 ) { CoreArrayMemory[0][ bit    ] = value; }
  else if (bit < 16) { CoreArrayMemory[1][(bit-8 )] = value; }
  else if (bit < 24) { CoreArrayMemory[2][(bit-16)] = value; }
  else if (bit < 32) { CoreArrayMemory[3][(bit-24)] = value; }
  else if (bit < 40) { CoreArrayMemory[4][(bit-32)] = value; }
  else if (bit < 48) { CoreArrayMemory[5][(bit-40)] = value; }
  else if (bit < 56) { CoreArrayMemory[6][(bit-48)] = value; }
  else if (bit < 64) { CoreArrayMemory[7][(bit-56)] = value; }
}

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
  
