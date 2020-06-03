#include <stdint.h>
//#include <stdbool.h>
#include <HardwareSerial.h>
#if (ARDUINO >= 100)
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#define SERIAL_PORT_SPEED   15200

// Consider using a <FastSerial.h> library?

void SerialDebugSetup() {
  //Serial.begin(115200);
  // while (!Serial) { ; } // wait for serial port to connect. Needed for native USB port only
  //Serial.println();
  //Serial.println("Serial Debug Port Started at ");
}

void SerialDebugProcess() {

}
