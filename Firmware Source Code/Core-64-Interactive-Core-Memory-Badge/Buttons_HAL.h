/*
Title:			  Generic Button Handler
Filename: 		Buttons_HAL.cpp and Buttons_HAL.h
Author: 		  Andrew Geppert
Rev: 			    0.3		
Date:			    2020-05-31
Description:	Returns the state of the button as active/inactive along with duration of that state.
Usage:			  Buttons_Setup() to configure pin mode and low/high to active/inactive logic.
              ButtonsState() to query active/inactive state and duration (ms)
*/
 
#ifndef BUTTONS_HAL_H
#define BUTTONS_HAL_H

#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include <stdint.h>

//#ifdef __cplusplus
//extern "C" {
//#endif

void Buttons_Setup();
extern uint32_t Button1State(uint32_t clear_duration);

//#ifdef __cplusplus
//} // extern "C"
//#endif

#endif // BUTTONS_HAL_H
