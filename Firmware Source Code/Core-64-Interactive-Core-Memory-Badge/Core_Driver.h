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

//#ifdef __cplusplus
//extern "C" {
//#endif

void ReturnMatrixQ9NtoLowForLEDArray();

void MatrixEnableTransistorInactive();
void MatrixEnableTransistorActive();
void MatrixDriveTransistorsInactive();
extern void SetRowAndCol (uint8_t row, uint8_t col);
extern void ClearRowAndCol (uint8_t row, uint8_t col);
bool SenseWirePulse();
void tempDebugPin17Twiddle ();
void tempDebugPin25Twiddle ();
void tempDebugPin25OutputMode ();
void tempDebugPin25InputMode ();

void ClearRowZeroAndColZero ();
// void SetRowZeroAndColZero ();

extern void TracingPulses(uint8_t numberOfPulses);
void DebugWithReedSwitchOutput();
void DebugWithReedSwitchInput();

//#ifdef __cplusplus
//} // extern "C"
//#endif

#endif // CORE_DRIVER_H
