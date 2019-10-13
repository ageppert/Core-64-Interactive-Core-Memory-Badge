#include <stdint.h>
#include <stdbool.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include "Core_Driver.h"
#include "HardwareIOMap.h"

// Array from 1-20 with MCU pin # associated to verbose transitor drive line name. Ex: PIN_MATRIX_DRIVE_Q1P
// Array position number 0 is not used in the matrix pin numbering
// Matrix Drive Line array position :    Unused, 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15,16,17,18,19,20
// Look out for these!              :                                                               *  *  *
// MCU PIN #                        :       N/A, 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15,16,17,20,21,22
static uint8_t MatrixDrivePinNumber[23] = {
  0,
  PIN_MATRIX_DRIVE_Q1P ,
  PIN_MATRIX_DRIVE_Q1N ,
  PIN_MATRIX_DRIVE_Q2P ,
  PIN_MATRIX_DRIVE_Q2N ,
  PIN_MATRIX_DRIVE_Q3P ,
  PIN_MATRIX_DRIVE_Q3N ,
  PIN_MATRIX_DRIVE_Q4P ,
  PIN_MATRIX_DRIVE_Q4N ,
  PIN_MATRIX_DRIVE_Q5P ,
  PIN_MATRIX_DRIVE_Q5N ,
  PIN_MATRIX_DRIVE_Q6P ,
  PIN_MATRIX_DRIVE_Q6N ,
  PIN_MATRIX_DRIVE_Q7P ,
  PIN_MATRIX_DRIVE_Q7N ,
  PIN_MATRIX_DRIVE_Q8P ,
  PIN_MATRIX_DRIVE_Q8N ,
  PIN_MATRIX_DRIVE_Q9P ,
  0,
  0,
  PIN_MATRIX_DRIVE_Q9N ,
  PIN_MATRIX_DRIVE_Q10P,
  PIN_MATRIX_DRIVE_Q10N
};
// MCU output pins are set to these states to correspond to activation of the transistor needed to achieve on/off state.
// static bool MatrixDrivePinInactiveState[] = { 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0}; // logic level to turn off transistor
// static bool MatrixDrivePinActiveState[]   = { 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1}; // logic level to turn on transistor

// I think the above isn't helpful because to use it you have to look up the pin you need by already knowing what position it is in the array.
// Instead, we need to look up the drive line number by knowing where it is in the array by it's own number.
// In other words, the pin # has to be the same as the array position.
// Array needs to be as big as the largest used pin number.
// Ex:
//                             array position:  0, 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15,16,17,18,19,20,21,22
//                             usable pins   :  -, 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15,16,17,--,--,20,21,22
// MCU output pins are set to these states to correspond to activation of the transistor needed to achieve on/off state.
static bool MatrixDrivePinInactiveState[23] = { 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0}; // logic level to turn off transistor
static bool MatrixDrivePinActiveState[23]   = { 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1}; // logic level to turn on transistor



// MCU output pin is set to these states to correspond to activation of the transistor needed to achieve active/inactive state.
#define WRITE_ENABLE_ACTIVE   1 // logic level to turn on transistor
#define WRITE_ENABLE_INACTIVE 0 // logic level to turn off transistor

// CMMD = Core Memory Matrix Drive
// Given a Core Memory Matrix Column 0 to 7 the array below specifies which 2 pins connected to transistors are required to set the column.
// CMM front (user) view is with Column 0 on left, 7 on right.
// Each row of the array corresponds to columns 0 to 7 of the CMM.
// Each row is sequence of 2 transitors, first one is at the top and second one is at the bottom.

// Set is given the arbitrary definition of current flow upward in that column.
// Top of column connected to VMEM and bottom of column connected to GNDPWR.
uint8_t CMMDSetCol[8][2] = {
  { PIN_MATRIX_DRIVE_Q3P, PIN_MATRIX_DRIVE_Q1N },  // Column 0
  { PIN_MATRIX_DRIVE_Q4P, PIN_MATRIX_DRIVE_Q1N },  // Column 1
  { PIN_MATRIX_DRIVE_Q5P, PIN_MATRIX_DRIVE_Q1N },  // Column 2
  { PIN_MATRIX_DRIVE_Q6P, PIN_MATRIX_DRIVE_Q1N },  // Column 3
  { PIN_MATRIX_DRIVE_Q3P, PIN_MATRIX_DRIVE_Q2N },  // Column 4
  { PIN_MATRIX_DRIVE_Q4P, PIN_MATRIX_DRIVE_Q2N },  // Column 5
  { PIN_MATRIX_DRIVE_Q5P, PIN_MATRIX_DRIVE_Q2N },  // Column 6
  { PIN_MATRIX_DRIVE_Q6P, PIN_MATRIX_DRIVE_Q2N }   // Column 7      
};

// Clear is given the arbitrary definition of current flow downward in that column.
// Top of column connected to GNDPWR and bottom of column connected to VMEM.
uint8_t CMMDClearCol[8][2] = {
  { PIN_MATRIX_DRIVE_Q3N, PIN_MATRIX_DRIVE_Q1P },  // Column 0
  { PIN_MATRIX_DRIVE_Q4N, PIN_MATRIX_DRIVE_Q1P },  // Column 1
  { PIN_MATRIX_DRIVE_Q5N, PIN_MATRIX_DRIVE_Q1P },  // Column 2
  { PIN_MATRIX_DRIVE_Q6N, PIN_MATRIX_DRIVE_Q1P },  // Column 3
  { PIN_MATRIX_DRIVE_Q3N, PIN_MATRIX_DRIVE_Q2P },  // Column 4
  { PIN_MATRIX_DRIVE_Q4N, PIN_MATRIX_DRIVE_Q2P },  // Column 5
  { PIN_MATRIX_DRIVE_Q5N, PIN_MATRIX_DRIVE_Q2P },  // Column 6
  { PIN_MATRIX_DRIVE_Q6N, PIN_MATRIX_DRIVE_Q2P }   // Column 7      
};

// Given a Core Memory Matrix Row 0 to 7 the array below specifies which 2 pins connected to transistors are required to set the row.
// CMM front (user) view is with Row 0 on top, 7 on bottom.
// Each row of the array corresponds to rows 0 to 7 of the CMM.
// Each row is sequence of 2 transitors, first one connects to top four rows and second one connects to the bottom four rows.

// Set is given the arbitrary definition of current flow rightward in the top four rows.
// Top four rows connected to VMEM and bottom four rows connected to GNDPWR.
uint8_t CMMDSetRow[8][2] = {
  { PIN_MATRIX_DRIVE_Q7P , PIN_MATRIX_DRIVE_Q9N  },  // Row 0
  { PIN_MATRIX_DRIVE_Q7P , PIN_MATRIX_DRIVE_Q10N },  // Row 1
  { PIN_MATRIX_DRIVE_Q8P , PIN_MATRIX_DRIVE_Q9N  },  // Row 2
  { PIN_MATRIX_DRIVE_Q8P , PIN_MATRIX_DRIVE_Q10N },  // Row 3
  { PIN_MATRIX_DRIVE_Q7N , PIN_MATRIX_DRIVE_Q9P  },  // Row 4
  { PIN_MATRIX_DRIVE_Q7N , PIN_MATRIX_DRIVE_Q10P },  // Row 5
  { PIN_MATRIX_DRIVE_Q8N , PIN_MATRIX_DRIVE_Q9P  },  // Row 6
  { PIN_MATRIX_DRIVE_Q8N , PIN_MATRIX_DRIVE_Q10P }   // Row 7      
};

// Clear is given the arbitrary definition of current flow leftward in that column.
// Top of column connected to GNDPWR and bottom of column connected to VMEM.
uint8_t CMMDClearRow[8][2] = {
  { PIN_MATRIX_DRIVE_Q7N , PIN_MATRIX_DRIVE_Q9P  },  // Row 0 
  { PIN_MATRIX_DRIVE_Q7N , PIN_MATRIX_DRIVE_Q10P },  // Row 1
  { PIN_MATRIX_DRIVE_Q8N , PIN_MATRIX_DRIVE_Q9P  },  // Row 2
  { PIN_MATRIX_DRIVE_Q8N , PIN_MATRIX_DRIVE_Q10P },  // Row 3
  { PIN_MATRIX_DRIVE_Q9N , PIN_MATRIX_DRIVE_Q7P  },  // Row 4
  { PIN_MATRIX_DRIVE_Q10N, PIN_MATRIX_DRIVE_Q8P  },  // Row 5
  { PIN_MATRIX_DRIVE_Q9N , PIN_MATRIX_DRIVE_Q7P  },  // Row 6
  { PIN_MATRIX_DRIVE_Q10N, PIN_MATRIX_DRIVE_Q8P  }   // Row 7      
};

void MatrixEnableTransistorInactive() { digitalWriteFast(PIN_WRITE_ENABLE, WRITE_ENABLE_INACTIVE); }

void MatrixEnableTransistorActive()   { digitalWriteFast(PIN_WRITE_ENABLE, WRITE_ENABLE_ACTIVE);   }

void MatrixDriveTransistorsInactive() {
  // Set all the matrix lines to the safe state, all transistors inactive.
  for (uint8_t i = 1; i < 23; i++) {
    digitalWriteFast(MatrixDrivePinNumber[i], MatrixDrivePinInactiveState[i]);
  }
}

// Configure four transistors to activate the specified core.
void SetRowAndCol (uint8_t row, uint8_t col) {
  digitalWriteFast( (CMMDSetRow[row] [0] ), MatrixDrivePinActiveState[ CMMDSetRow[row] [0] ] ); // for bit 0, pin 13, 0
  digitalWriteFast( (CMMDSetRow[row] [1] ), MatrixDrivePinActiveState[ CMMDSetRow[row] [1] ] ); // for bit 0, pin 20, 1
  digitalWriteFast( (CMMDSetCol[col] [0] ), MatrixDrivePinActiveState[ CMMDSetCol[col] [0] ] ); // for bit 0, pin  5, 0
  digitalWriteFast( (CMMDSetCol[col] [1] ), MatrixDrivePinActiveState[ CMMDSetCol[col] [1] ] ); // for bit 0, pin  2, 1
}

void ClearRowAndCol (uint8_t row, uint8_t col) {
  digitalWriteFast( (CMMDClearRow[row] [0] ), MatrixDrivePinActiveState[ CMMDClearRow[row] [0] ] ); // for bit 0, pin 
  digitalWriteFast( (CMMDClearRow[row] [1] ), MatrixDrivePinActiveState[ CMMDClearRow[row] [1] ] ); // for bit 0, pin 
  digitalWriteFast( (CMMDClearCol[col] [0] ), MatrixDrivePinActiveState[ CMMDClearCol[col] [0] ] ); // for bit 0, pin 
  digitalWriteFast( (CMMDClearCol[col] [1] ), MatrixDrivePinActiveState[ CMMDClearCol[col] [1] ] ); // for bit 0, pin    
}

bool SenseWirePulse() {
  return digitalReadFast(Pin_Sense_Pulse);
}

void tempDebugPin17Twiddle () {
  digitalWriteFast(Pin_LED_Array, 0);
  digitalWriteFast(Pin_LED_Array, 1);
}

void tempDebugPin25Twiddle () {
  digitalWriteFast(Pin_Reed_Switch, 1);
  digitalWriteFast(Pin_Reed_Switch, 0);
}

void tempDebugPin25OutputMode () {
  pinMode(Pin_Reed_Switch, OUTPUT);
  digitalWriteFast(Pin_Reed_Switch, 0);
}

void tempDebugPin25InputMode () {
  digitalWriteFast(Pin_Reed_Switch, 0);
  pinMode(Pin_Reed_Switch, INPUT);
}

