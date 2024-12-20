//////////////////////////////////////////////////////////
/////////////         LIBRARIES            ///////////////
//////////////////////////////////////////////////////////
#include "mSPI.h"
#include "metal_detector.h"
#include "rover.h" // Include the Rover header file

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

// Pin Definitions for Rover motors
// Motor1
#define MOTOR1_DIR 6
#define MOTOR1_PWM 9
// Motor2
#define MOTOR2_DIR 7
#define MOTOR2_PWM 10
// Motor3
#define MOTOR3_DIR 8
#define MOTOR3_PWM 11
// Motor4
#define MOTOR4_DIR 12
#define MOTOR4_PWM 13

//////////////////////////////////////////////////////////
/////////////       Classes inits          ///////////////
//////////////////////////////////////////////////////////
// Init the SPI object (using uint8_t for the data type)
mSPI spi(PIN_MOSI, PIN_MISO, PIN_SCLK, PIN_CS);

// Init the MetalDetector object
MetalDetector metalDetector(SENSOR_PIN, BUZZER_PIN);

// Init the Motor objects
Motor motor1(MOTOR1_DIR, MOTOR1_PWM);
Motor motor2(MOTOR2_DIR, MOTOR2_PWM);
Motor motor3(MOTOR3_DIR, MOTOR3_PWM);
Motor motor4(MOTOR4_DIR, MOTOR4_PWM);

// Init the Rover object
Rover rover(motor1, motor2, motor3, motor4);

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

  // Calculate RMS of L3x and L3y values
  float speed = sqrt((L3x * L3x + L3y * L3y) / 2.0);

  // Ensure speed is within the 0-255 range
  speed = (char) constrain(speed, 0, 255);

  // Move forward (+x, +y) if L3x and L3y are both positive
  if (L3x > 0 && abs(L3y) < 10) { // Small y value to differentiate forward
    rover.move_forward(speed);
  }
  // Move backward (-x, -y) if L3x and L3y are both negative
  else if (L3x < 0 && abs(L3y) < 10) { // Small y value to differentiate backward
    rover.move_backward(speed);
  }
  // Move right (+x, y) if only L3x is positive and L3y is small
  else if (L3x > 0 && abs(L3y) < 10) {
    rover.move_right(speed);
  }
  // Move left (-x, y) if only L3x is negative and L3y is small
  else if (L3x < 0 && abs(L3y) < 10) {
    rover.move_left(speed);
  }
  // Stop if no meaningful movement detected
  else {
    rover.stop();
  }

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
  delay(500);
}
