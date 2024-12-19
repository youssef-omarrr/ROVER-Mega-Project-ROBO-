#include <Arduino.h>
#include <SPI.h>
#include "mSPI.h"

// Constructor to init the SPI pins
mSPI::mSPI(PIN_MOSI, PIN_MISO, PIN_SCLK, PIN_CS) {
  this->PIN_MOSI = PIN_MOSI;
  this->PIN_MISO = PIN_MISO;
  this->PIN_SCLK = PIN_SCLK;
  this->PIN_CS = PIN_CS;
}

// Init the SPI interface
void mSPI::begin() {

  pinMode(PIN_MOSI, OUTPUT);
  pinMode(PIN_MISO, INPUT);
  pinMode(PIN_SCLK, OUTPUT);
  pinMode(PIN_CS, OUTPUT);

  // Deselect the device initially
  digitalWrite(PIN_CS, HIGH);
  SPI.begin(PIN_SCLK, PIN_MISO, PIN_MOSI, PIN_CS);
}

// Send data of type uint8_t over SPI
void mSPI::send_data(uint8_t data) {
  digitalWrite(PIN_CS, LOW);                 // Select the device
  SPI.transfer(static_cast<uint8_t>(data));  // Send data
  digitalWrite(PIN_CS, HIGH);                // Deselect the device
}

// Receive data of type uint8_t (L3X, L3Y) over SPI
uint8_t mSPI::receive_data() {
  // Select the device
  digitalWrite(PIN_CS, LOW);
  
  // Receive data: Assuming 2 bytes are being sent for L3X and L3Y
  uint8_t data = SPI.transfer(0x00);  // Send dummy byte to receive data

  // Deselect the device
  digitalWrite(PIN_CS, HIGH);

 
  return data;
}