#!/usr/bin/env python3

'''
1. Initialize ROS node, subscribe to 'webtoros' for controller data, and set up GPIO pins for 4 motors.
2. Set motor pins as output and initialize PWM for controlling speed.
3. Controller callback processes L3X and L3Y values to calculate speed and direction.
4. Movement functions adjust motor direction pins based on controller input and set speed using PWM.
5. Stop function halts all motors by setting direction pins to LOW and speed to 0%.
6. Set motor speed adjusts the PWM duty cycle to control motor speed.
7. Cleanup function ensures proper GPIO cleanup on shutdown.

'''

import rospy # type: ignore
from mega_rover_project_pkg.msg import controller
import RPi.GPIO as GPIO
import math

class MotorController:
    def __init__(self):
        rospy.init_node('motor_controller', anonymous=True)
        
        # Subscribe to the 'webtoros' topic to get controller data
        rospy.Subscriber('webtoros', controller, self.controller_callback)
    
        # Set up GPIO pins for the 4 motors
        self.motor_pins = {
            'motor1_pwm': 18,  # Motor 1 PWM pin
            'motor1_dir': 23,  # Motor 1 Direction pin
            
            'motor2_pwm': 24,  # Motor 2 PWM pin
            'motor2_dir': 25,  # Motor 2 Direction pin
            
            'motor3_pwm': 12,  # Motor 3 PWM pin
            'motor3_dir': 16,  # Motor 3 Direction pin
            
            'motor4_pwm': 20,  # Motor 4 PWM pin
            'motor4_dir': 21,  # Motor 4 Direction pin
        }
        
        # Set motor pins mode to output
        GPIO.setmode(GPIO.BCM)
        for pin in self.motor_pins.values():
            GPIO.setup(pin, GPIO.OUT)
        
        # Initialize PWM for motors
        self.motor1_pwm = GPIO.PWM(self.motor_pins['motor1_pwm'], 1000)
        self.motor2_pwm = GPIO.PWM(self.motor_pins['motor2_pwm'], 1000)
        self.motor3_pwm = GPIO.PWM(self.motor_pins['motor3_pwm'], 1000)
        self.motor4_pwm = GPIO.PWM(self.motor_pins['motor4_pwm'], 1000)

        self.motor1_pwm.start(0)  # Start PWM with 0% duty cycle
        self.motor2_pwm.start(0)
        self.motor3_pwm.start(0)
        self.motor4_pwm.start(0)


    def controller_callback(self, msg):
        # Extract L3X and L3Y values from the controller message
        l3x = msg.L3X
        l3y = msg.L3Y
        
        rospy.loginfo(f"Received controller data: L3X={l3x}, L3Y={l3y}")

        # Calculate RMS of L3X and L3Y values
        speed = math.sqrt(l3x ** 2 + l3y ** 2)
        
        # Ensure speed is within the 0-255 range
        speed = int(min(max(speed, 0), 255))
        
        # Move forward (+x, +y) if L3X and L3Y are both positive
        if l3y > 0 and abs(l3x) < 10:  # Small y value to differentiate forward
            self.move_forward(speed)
        
        # Move backward (-x, -y) if L3X and L3Y are both negative
        elif l3y < 0 and abs(l3x) < 10:  # Small y value to differentiate backward
            self.move_backward(speed)
        
        # Move right (+x, y) if only L3X is positive and L3Y is small
        elif l3x > 0 and abs(l3y) < 10:
            self.move_right(speed)
        
        # Move left (-x, y) if only L3X is negative and L3Y is small
        elif l3x < 0 and abs(l3y) < 10:
            self.move_left(speed)
        
        # # Forward-Right Movement (+x, +y)
        # elif l3x > 0 and l3y > 0:
        #     self.move_forward_right(speed)
        
        # # Backward-Right Movement (+x, -y)
        # elif l3x > 0 and l3y < 0:
        #     self.move_backward_right(speed)
        
        # # Forward-Left Movement (-x, +y)
        # elif l3x < 0 and l3y > 0:
        #     self.move_forward_left(speed)
        
        # # Backward-Left Movement (-x, -y)
        # elif l3x < 0 and l3y < 0:
        #     self.move_backward_left(speed)

        # Stop if no meaningful movement detected
        else:
            self.stop()

    '''
    The Direction Pin is a digital signal, either HIGH or LOW.
    HIGH typically sets the motor to rotate in one direction (e.g., forward).
    LOW sets the motor to rotate in the opposite direction (e.g., backward).
    
    MOTOR SETUP:
        front
        1   2
        3   4
         back
    '''
    def move_forward(self, speed):
        """Move the rover forward with specified speed"""
        GPIO.output(self.motor_pins['motor1_dir'], GPIO.HIGH)
        GPIO.output(self.motor_pins['motor2_dir'], GPIO.HIGH)
        
        GPIO.output(self.motor_pins['motor3_dir'], GPIO.HIGH)
        GPIO.output(self.motor_pins['motor4_dir'], GPIO.HIGH)
        
        self.set_motor_speed(speed)

    def move_backward(self, speed):
        """Move the rover backward with specified speed"""
        GPIO.output(self.motor_pins['motor1_dir'], GPIO.LOW)
        GPIO.output(self.motor_pins['motor2_dir'], GPIO.LOW)
        
        GPIO.output(self.motor_pins['motor3_dir'], GPIO.LOW)
        GPIO.output(self.motor_pins['motor4_dir'], GPIO.LOW)
        
        self.set_motor_speed(speed)

    def move_right(self, speed):
        """Move the rover right with specified speed"""
        GPIO.output(self.motor_pins['motor1_dir'], GPIO.HIGH)
        GPIO.output(self.motor_pins['motor2_dir'], GPIO.LOW)
        
        GPIO.output(self.motor_pins['motor3_dir'], GPIO.HIGH)
        GPIO.output(self.motor_pins['motor4_dir'], GPIO.LOW)
        
        self.set_motor_speed(speed)
        
    def move_left(self, speed):
        """Move the rover left with specified speed"""
        GPIO.output(self.motor_pins['motor1_dir'], GPIO.LOW)
        GPIO.output(self.motor_pins['motor2_dir'], GPIO.HIGH)
        
        GPIO.output(self.motor_pins['motor3_dir'], GPIO.LOW)
        GPIO.output(self.motor_pins['motor4_dir'], GPIO.HIGH)
        
        self.set_motor_speed(speed)
        
    ####========== configure other 4 directions later =======####
    def move_forward_right(self, speed):
        """Move the rover forward and right with specified speed"""
        GPIO.output(self.motor_pins['motor1_dir'], GPIO.HIGH)
        GPIO.output(self.motor_pins['motor2_dir'], GPIO.LOW)
        
        GPIO.output(self.motor_pins['motor3_dir'], GPIO.LOW)
        GPIO.output(self.motor_pins['motor4_dir'], GPIO.HIGH)
        
        self.set_motor_speed(speed)

    def move_backward_right(self, speed):
        """Move the rover backward and right with specified speed"""
        GPIO.output(self.motor_pins['motor1_dir'], GPIO.LOW)
        GPIO.output(self.motor_pins['motor2_dir'], GPIO.HIGH)
        
        GPIO.output(self.motor_pins['motor3_dir'], GPIO.LOW)
        GPIO.output(self.motor_pins['motor4_dir'], GPIO.HIGH)
        
        self.set_motor_speed(speed)

    def move_forward_left(self, speed):
        """Move the rover forward and left with specified speed"""
        GPIO.output(self.motor_pins['motor1_dir'], GPIO.LOW)
        GPIO.output(self.motor_pins['motor2_dir'], GPIO.HIGH)
        
        GPIO.output(self.motor_pins['motor3_dir'], GPIO.HIGH)
        GPIO.output(self.motor_pins['motor4_dir'], GPIO.LOW)
        
        self.set_motor_speed(speed)

    def move_backward_left(self, speed):
        """Move the rover backward and left with specified speed"""
        GPIO.output(self.motor_pins['motor1_dir'], GPIO.HIGH)
        GPIO.output(self.motor_pins['motor2_dir'], GPIO.LOW)
        
        GPIO.output(self.motor_pins['motor3_dir'], GPIO.HIGH)
        GPIO.output(self.motor_pins['motor4_dir'], GPIO.LOW)
        
        self.set_motor_speed(speed)
    ####========== configure other 4 directions later =======####
    
    def stop(self):
        """Stop the rover"""
        GPIO.output(self.motor_pins['motor1_dir'], GPIO.LOW)
        GPIO.output(self.motor_pins['motor2_dir'], GPIO.LOW)
        GPIO.output(self.motor_pins['motor3_dir'], GPIO.LOW)
        GPIO.output(self.motor_pins['motor4_dir'], GPIO.LOW)
        
        self.set_motor_speed(0)

    def set_motor_speed(self, speed):
        """Set the PWM duty cycle for all motors"""
        self.motor1_pwm.ChangeDutyCycle(speed)
        self.motor2_pwm.ChangeDutyCycle(speed)
        self.motor3_pwm.ChangeDutyCycle(speed)
        self.motor4_pwm.ChangeDutyCycle(speed)

    def cleanup(self):
        """Clean up GPIO settings before exit"""
        GPIO.cleanup()
    
    def spin(self):
        rospy.spin()
        
if __name__ == '__main__':
    try:
        motor_controller = MotorController()
        motor_controller.spin() 
    except rospy.ROSInterruptException:
        pass
    finally:
        motor_controller.cleanup()  # Ensure cleanup on shutdown
