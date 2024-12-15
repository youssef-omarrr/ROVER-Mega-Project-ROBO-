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

// Receive data of type uint8_t over SPI
uint8_t mSPI::get_data() {
  digitalWrite(PIN_CS, LOW);                    // Select the device
  uint8_t receivedData = SPI.transfer(0x00);    // Dummy send to receive data
  digitalWrite(PIN_CS, HIGH);                   // Deselect the device
  return receivedData;
}