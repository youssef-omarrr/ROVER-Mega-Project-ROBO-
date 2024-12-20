#include "motor.h"

// Class representing a Rover with four motors
class Rover {
private:
    Motor motor1; // Motor object for the front-left motor
    Motor motor2; // Motor object for the front-right motor
    Motor motor3; // Motor object for the rear-left motor
    Motor motor4; // Motor object for the rear-right motor

public:
    // Constructor to initialize the Rover with four Motor objects
    Rover(Motor motor1, Motor motor2, Motor motor3, Motor motor4);

    // Moves the Rover forward at the specified speed
    void move_forward(char speed);

    // Moves the Rover backward at the specified speed
    void move_backward(char speed);

    // Turns the Rover to the right at the specified speed
    void move_right(char speed);

    // Turns the Rover to the left at the specified speed
    void move_left(char speed);

    // Stop motor
    void stop();
};
