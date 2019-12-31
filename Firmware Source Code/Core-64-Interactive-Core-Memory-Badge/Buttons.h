/*
Title:			  Generic Button Handler
Filename: 		Buttons.cpp and Buttons.h
Author: 		  Andrew Geppert
Rev: 			    0.1		
Date:			    2019-09-02
Description:	Returns the state of the button as active/inactive along with duration of that state.
Usage:			  ButtonsSetup() to configure pin mode and low/high to active/inactive logic.
              ButtonsState() to query active/inactive state and duration (ms)
*/
 
#ifndef BUTTONS_H
#define BUTTONS_H

#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#include <stdint.h>

//#ifdef __cplusplus
//extern "C" {
//#endif

void ButtonsSetup();
extern uint32_t Button1State(uint32_t clear_duration);

//#ifdef __cplusplus
//} // extern "C"
//#endif

#endif
