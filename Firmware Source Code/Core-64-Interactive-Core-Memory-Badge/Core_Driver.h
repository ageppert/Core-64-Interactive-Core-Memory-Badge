/*
PURPOSE: Test the digital IO pins that are planned for addressing the core matrix with non-blocking code
SETUP:
- Configure in Digital_IO_Test.c
*/
 
#ifndef CORE_DRIVER_H
#define CORE_DRIVER_H

#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include <stdint.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

// Functions coverted to support V0.2 and V0.3 hardware are prefixed with Core_Driver_
void Core_Driver_Setup();
void Core_Plane_Select(uint8_t plane);		// Select 1 through 8.
void ReturnMatrixQ9NtoLowForLEDArray();

void MatrixEnableTransistorInactive();
void MatrixEnableTransistorActive();
void MatrixDriveTransistorsInactive();
extern void SetRowAndCol (uint8_t row, uint8_t col);
extern void ClearRowAndCol (uint8_t row, uint8_t col);
void CoreSenseReset();
bool SenseWirePulse();

void ClearRowZeroAndColZero (); // temp test function
void SetRowZeroAndColZero ();   // temp test function

extern void TracingPulses(uint8_t numberOfPulses);
void DebugWithReedSwitchOutput();
void DebugWithReedSwitchInput();

void DebugIOESpare1_On();
void DebugIOESpare1_Off();
void DebugIOESpare2_On();
void DebugIOESpare2_Off();

void DebugPin10_On();
void DebugPin10_Off();
void DebugPin14_On();
void DebugPin14_Off();
void DebugPin15_On();
void DebugPin15_Off();

#ifdef __cplusplus
} // extern "C"
#endif

#endif // CORE_DRIVER_H
