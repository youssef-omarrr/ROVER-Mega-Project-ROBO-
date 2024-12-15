//////////////////////////////////////////////////////////
/////////////         LIBRARIES            ///////////////
//////////////////////////////////////////////////////////
#include "mSPI.h"
#include "metal_detector.h"


//////////////////////////////////////////////////////////
/////////////      PIN definations         ///////////////
//////////////////////////////////////////////////////////
// Pin Definitions for mSPI
#define PIN_MOSI 23
#define PIN_MISO 19
#define PIN_SCLK 18
#define PIN_CS   5

// Pin Definitions for Metal Detector
#define SENSOR_PIN 2
#define BUZZER_PIN 3

//////////////////////////////////////////////////////////
/////////////       Classes inits          ///////////////
//////////////////////////////////////////////////////////
// Init the SPI object (using uint8_t for the data type)
mSPI spi(PIN_MOSI, PIN_MISO, PIN_SCLK, PIN_CS);

// Init the MetalDetector object
MetalDetector metalDetector(SENSOR_PIN, BUZZER_PIN);


//////////////////////////////////////////////////////////
/////////////            MAIN              ///////////////
//////////////////////////////////////////////////////////
void setup() {
  // Init serial communication
  Serial.begin(9600);

  // Init SPI and metal detector
  spi.begin();
  metalDetector.begin();
  
  Serial.println("Setup complete. Testing SPI and Metal Detector...");
}

void loop() {
  // Test SPI by sending and receiving a byte
  uint8_t dataToSend = 42;  // Test byte to send
  spi.send_data(dataToSend);
  uint8_t receivedData = spi.get_data();
  
  Serial.print("Sent data: ");
  Serial.print(dataToSend);
  Serial.print(", Received data: ");
  Serial.println(receivedData);

  // Test metal detection and handle detection
  metalDetector.handleDetection();
  
  // Small delay to avoid spamming
  delay(500);
}
