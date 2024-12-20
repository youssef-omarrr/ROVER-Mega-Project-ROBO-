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

  // Init Rover motors
  motor1.init_motor();
  motor2.init_motor();
  motor3.init_motor();
  motor4.init_motor();

  Serial.println("Setup complete. Testing SPI, Metal Detector, and Rover...");
}

void loop() {
  // Receive joystick data
  uint8_t L3x = spi.receive_data();
  uint8_t L3y = spi.receive_data();

  // Print received data
  Serial.print("Received L3x: ");
  Serial.print(L3x);
  Serial.print(", L3y: ");
  Serial.println(L3y);

  // Check for metal detection
  if (metalDetector.handleDetection()) {
    // Send a flag (1) via SPI to indicate metal is detected
    uint8_t detectionFlag = 1; // Metal detected
    spi.send_data(detectionFlag);

    Serial.println("Metal detected! Flag sent via SPI.");
  } else {
    // Send a flag (0) via SPI to indicate no metal detected
    uint8_t detectionFlag = 0; // No metal detected
    spi.send_data(detectionFlag);

    Serial.println("No metal detected. Flag sent via SPI.");
  }

  // Small delay to avoid spamming
  delay(50);
}
