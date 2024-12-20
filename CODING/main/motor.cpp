#include <Arduino.h>
#include "motor.h"

// Constructor to initialize the Motor with direction and PWM pins
Motor::Motor(char dir_pin, char pwm_pin) {
    this->dir_pin = dir_pin; // Assign the direction pin
    this->pwm_pin = pwm_pin; // Assign the PWM pin
}

// Initialize the motor pins as outputs
void Motor::init_motor() {
    pinMode(dir_pin, OUTPUT); // Set the direction pin as output
    pinMode(pwm_pin, OUTPUT); // Set the PWM pin as output
}

// Function to rotate the motor in a clockwise direction
// Takes speed (0-255) as input for PWM
void Motor::move_clock(char speed) {
    digitalWrite(dir_pin, HIGH);   // Set the direction pin to HIGH (clockwise)
    analogWrite(pwm_pin, speed);  // Set the PWM pin to the specified speed
}

// Function to rotate the motor in an anti-clockwise direction
// Takes speed (0-255) as input for PWM
void Motor::move_anticlock(char speed) {
    digitalWrite(dir_pin, LOW);   // Set the direction pin to LOW (anti-clockwise)
    analogWrite(pwm_pin, speed);  // Set the PWM pin to the specified speed
}
