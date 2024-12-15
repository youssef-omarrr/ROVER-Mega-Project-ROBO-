#include <Arduino.h>
#include "metal_detector.h"

// Constructor to initialize the metal detector with sensor pin and buzzer pin
MetalDetector::MetalDetector(int sensorPIN, int buzzerPIN) {
  this->sensorPIN = sensorPIN;
  this->buzzerPIN = buzzerPIN;
}

// Initialize the sensor and buzzer pin
void MetalDetector::begin() {
  pinMode(sensorPIN, INPUT);
  pinMode(buzzerPIN, OUTPUT);
  analogWrite(buzzerPIN, 0);  // Turn off buzzer initially (set to 0 PWM)
}

// Perform an action when metal is detected
void MetalDetector::handleDetection() {
  // Read the analog value from the sensor pin (PWM signal)
  int sensorValue = analogRead(sensorPIN);

  // Map the sensor value to a PWM range (0 to 255)
  int pwmValue = map(sensorValue, 0, 1023, 0, 255);  // Adjust as needed based on the sensor's range

  // If the sensor is detecting metal, control the buzzer with the PWM value
  if (sensorValue > tolerance) {  // If sensor is detecting metal
    Serial.print("Metal detected! PWM Value: ");
    Serial.println(sensorValue);
    analogWrite(buzzerPIN, pwmValue);  // Control the buzzer intensity based on the sensor reading
  } else {
    analogWrite(buzzerPIN, 0);  // No metal detected, turn off the buzzer
  }
}
