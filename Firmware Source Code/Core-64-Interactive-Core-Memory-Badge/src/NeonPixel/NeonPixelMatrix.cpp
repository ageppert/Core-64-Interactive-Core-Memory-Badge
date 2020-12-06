
#include <Adafruit_GFX.h>
#include "NeonPixelMatrix.h"
#include <SPI.h>

// Teensy 3.2
#define CLOCKPIN        13
#define DATA_OUT        11
#define DATA_IN         12
#define CHIP_SELECT      8

static const int spiClk = 480000; 

NeonPixelMatrix::NeonPixelMatrix(int16_t w, int16_t h) : 
    Adafruit_GFX(w, h) {

    // SPI init
    // hspi = new SPIClass(HSPI);
    // hspi->begin(CLOCKPIN, 12, DATAPIN, 14); //SCLK, MISO, MOSI, SS
      pinMode(CHIP_SELECT, OUTPUT);

      SPI.setMISO(DATA_IN); // 12
      SPI.setMOSI(DATA_OUT); // 11
      SPI.setSCK(CLOCKPIN);  // 13
      SPI.begin();                  //   <<<--- THE MISSING KEY TO MAKING THE setCLK assignment work!!!

      Serial.print("\nInitializing Neon Pixel Matrix...");

}

boolean NeonPixelMatrix::begin() {
    if((!frameBuffer) && !(frameBuffer = (uint8_t *)malloc(WIDTH * HEIGHT))) {
        return false;
    }

    if((!displayBuffer) && !(displayBuffer = (uint8_t *)malloc(pixelWidth * pixelHeight))) {
        return false;
    }

    clear();
    display();

    return true;
}

void NeonPixelMatrix::setDisplayPixelSize(int16_t w, int16_t h){
    pixelHeight = h;
    pixelWidth = w;
}

void NeonPixelMatrix::setViewOrigin(int16_t x, int16_t y){
    viewOriginX = x;
    viewOriginY = y;
}

void NeonPixelMatrix::clear(void) {
    for (int i=0; i<(WIDTH * HEIGHT); i++) {
        frameBuffer[i] = 0x00;
    }
}

void NeonPixelMatrix::drawPixel(int16_t x, int16_t y, uint16_t color) {
    // Serial.printf("x=%d, y=%d, c=%d\n", x, y, color);
    if (x>=WIDTH || y>=HEIGHT) return;
    if (x<0 || y<0) return;
    frameBuffer[ (y*WIDTH)+x ] = color;

}

void NeonPixelMatrix::display() {
    uint16_t i=0;
    for(int x=viewOriginX; x<viewOriginX+pixelWidth; x++) {
        for(int y=viewOriginY; y<viewOriginY+pixelHeight; y++){
            displayBuffer[((pixelWidth*pixelHeight)-1)-i++] = frameBuffer[((y%HEIGHT)*WIDTH) + (x%WIDTH)];
        }
    }

    // hspi->beginTransaction(SPISettings(spiClk, MSBFIRST, SPI_MODE0));
    // hspi->transferBytes(displayBuffer , NULL, (pixelWidth*pixelHeight));
    // hspi->endTransaction();
}

uint8_t *NeonPixelMatrix::getBuffer() { return frameBuffer; }

NeonPixelMatrix::~NeonPixelMatrix(void) {
    if(frameBuffer) {
        free(frameBuffer);
        frameBuffer = NULL;
    }
    if (displayBuffer) {
        free(displayBuffer);
        displayBuffer = NULL;
    }
}