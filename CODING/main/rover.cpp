<<<<<<< HEAD
#include <Arduino.h>
#include "rover.h"

// Constructor to initialize the Rover with four Motor objects
Rover::Rover(Motor motor1, Motor motor2, Motor motor3, Motor motor4) {
    this->motor1 = motor1;
    this->motor2 = motor2;
    this->motor3 = motor3;
    this->motor4 = motor4;
}

// Moves the Rover forward at the specified speed
void Rover::move_forward(char speed) {
    motor1.move_clock(speed);   // Front-left motor moves clockwise
    motor2.move_clock(speed);   // Front-right motor moves clockwise
    motor3.move_clock(speed);   // Rear-left motor moves clockwise
    motor4.move_clock(speed);   // Rear-right motor moves clockwise
}

// Moves the Rover backward at the specified speed
void Rover::move_backward(char speed) {
    motor1.move_anticlock(speed); // Front-left motor moves anti-clockwise
    motor2.move_anticlock(speed); // Front-right motor moves anti-clockwise
    motor3.move_anticlock(speed); // Rear-left motor moves anti-clockwise
    motor4.move_anticlock(speed); // Rear-right motor moves anti-clockwise
}

// Turns the Rover to the right at the specified speed
void Rover::move_right(char speed) {
    motor1.move_clock(speed);    // Front-left motor moves clockwise
    motor2.move_anticlock(speed); // Front-right motor moves anti-clockwise
    motor3.move_clock(speed);    // Rear-left motor moves clockwise
    motor4.move_anticlock(speed); // Rear-right motor moves anti-clockwise
}

// Turns the Rover to the left at the specified speed
void Rover::move_left(char speed) {
    motor1.move_anticlock(speed); // Front-left motor moves anti-clockwise
    motor2.move_clock(speed);    // Front-right motor moves clockwise
    motor3.move_anticlock(speed); // Rear-left motor moves anti-clockwise
    motor4.move_clock(speed);    // Rear-right motor moves clockwise
}

void Rover::stop(){
  motor1.move_anticlock(0); 
  motor2.move_anticlock(0); 
  motor3.move_anticlock(0); 
  motor4.move_anticlock(0); 
}
=======
#include <Arduino.h>
#include "rover.h"

// Constructor to initialize the Rover with four Motor objects
Rover::Rover(Motor motor1, Motor motor2, Motor motor3, Motor motor4) {
    this->motor1 = motor1;
    this->motor2 = motor2;
    this->motor3 = motor3;
    this->motor4 = motor4;
}

// Moves the Rover forward at the specified speed
void Rover::move_forward(char speed) {
    motor1.move_clock(speed);   // Front-left motor moves clockwise
    motor2.move_clock(speed);   // Front-right motor moves clockwise
    motor3.move_clock(speed);   // Rear-left motor moves clockwise
    motor4.move_clock(speed);   // Rear-right motor moves clockwise
}

// Moves the Rover backward at the specified speed
void Rover::move_backward(char speed) {
    motor1.move_anticlock(speed); // Front-left motor moves anti-clockwise
    motor2.move_anticlock(speed); // Front-right motor moves anti-clockwise
    motor3.move_anticlock(speed); // Rear-left motor moves anti-clockwise
    motor4.move_anticlock(speed); // Rear-right motor moves anti-clockwise
}

// Turns the Rover to the right at the specified speed
void Rover::move_right(char speed) {
    motor1.move_clock(speed);    // Front-left motor moves clockwise
    motor2.move_anticlock(speed); // Front-right motor moves anti-clockwise
    motor3.move_clock(speed);    // Rear-left motor moves clockwise
    motor4.move_anticlock(speed); // Rear-right motor moves anti-clockwise
}

// Turns the Rover to the left at the specified speed
void Rover::move_left(char speed) {
    motor1.move_anticlock(speed); // Front-left motor moves anti-clockwise
    motor2.move_clock(speed);    // Front-right motor moves clockwise
    motor3.move_anticlock(speed); // Rear-left motor moves anti-clockwise
    motor4.move_clock(speed);    // Rear-right motor moves clockwise
}

void Rover::stop(){
  motor1.move_anticlock(0); 
  motor2.move_anticlock(0); 
  motor3.move_anticlock(0); 
  motor4.move_anticlock(0); 
}
>>>>>>> a3dc74be2e0aa72146fd336cb70ab70be692fc83
