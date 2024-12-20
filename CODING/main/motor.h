class Motor {
private:
    char dir_pin; // Pin to control the motor's direction
    char pwm_pin; // Pin to control the motor's speed using PWM

public:
    // Constructor to initialize the Motor with direction and PWM pins
    Motor(char dir_pin, char pwm_pin);

    // Method to initialize the motor pins as output
    void init_motor();

    // Method to rotate the motor in a clockwise direction
    // Takes a speed value (0-255) for PWM control
    void move_clock(char speed);

    // Method to rotate the motor in an anti-clockwise direction
    // Takes a speed value (0-255) for PWM control
    void move_anticlock(char speed);
};
