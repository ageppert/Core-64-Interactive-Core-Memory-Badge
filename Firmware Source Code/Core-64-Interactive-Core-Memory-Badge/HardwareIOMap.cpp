
#if (ARDUINO >= 100)
	#include <Arduino.h>
#else
	#include <WProgram.h>
#endif

#include <stdint.h>
#include <stdbool.h>

#include "HardwareIOMap.h"
#include "I2C_Manager.h"

	uint8_t HardwareVersionMajor  = 0;  // Default
	uint8_t HardwareVersionMinor  = 0;  // Default
	uint8_t HardwareVersionPatch  = 0;  // Default

void DetectHardwareVersion() {
	if (I2CDetectExternalEEPROM(0x57))
	{
		HardwareVersionMajor  = 0;
		HardwareVersionMinor  = 3;
		HardwareVersionPatch  = 0;
	}
	else
	{
		HardwareVersionMajor  = 0;
		HardwareVersionMinor  = 2;
		HardwareVersionPatch  = 0;		
	}
}

