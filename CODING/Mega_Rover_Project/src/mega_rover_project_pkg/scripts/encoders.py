#!/usr/bin/env python3

'''
This script interfaces with an encoder system and IMU sensor to compute and publish odometry data:
1. **Encoder Initialization**: Uses Hall sensors to track wheel rotations and compute distance.

2. **Yaw Handling**: Yaw angle is obtained from the IMU sensor and used to update rover position.

3. **Odometry Calculation**: Distance traveled is calculated, and robot's x, y, and yaw are updated.

4. **Odometry Publishing**: Published odometry data to '/encoder/odom' for fusion with EKF.

5. **Testing**: `EncoderStub` simulates encoder data and yaw for testing purposes.

The script combines encoder data and IMU yaw to estimate and publish the robot's position in real-time.
'''



import rospy
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Quaternion
from std_msgs.msg import Float64
from std_msgs.msg import Float32
import RPi.GPIO as GPIO
import math

class Encoder:
    # Constructor
    def __init__(self, hall_pins, wheel_diameter, counts_per_rev):
        self.hall_pins = hall_pins
        self.wheel_diameter = wheel_diameter
        self.counts_per_rev = counts_per_rev
        self.count = 0
        self.x = 0.0
        self.y = 0.0
        self.yaw = 0.0  # radians

        # ROS Node Initialization
        rospy.init_node('encoder_publisher', anonymous=True)
        # pub to encoder/odom
        self.odom_pub = rospy.Publisher('/encoder/odom', Odometry, queue_size=10)
        # sub to imu/yaw
        rospy.Subscriber('/imu/yaw', Float64, self.yaw_callback)

        # Set Hall Sensors' Pins Mode
        GPIO.setmode(GPIO.BCM)
        for pin in self.hall_pins:
            # Initialize Interrupt For Hall Sensors
            GPIO.setup(pin, GPIO.IN, pull_up_down=GPIO.PUD_UP)
            # Interrupt Trigger hall_callback Function
            GPIO.add_event_detect(pin, GPIO.BOTH, callback=self.hall_callback, bouncetime=2)

    # Callback Function for Yaw Angle
    def yaw_callback(self, msg):
        self.yaw = math.radians(msg.data)  # Convert yaw to radians
    
    # Callback Function for hall sensors
    def hall_callback(self, channel):
        self.count += 1
        self.update_odometry()

    # Get Distance
    def get_distance(self):
        circumference = math.pi * self.wheel_diameter
        return (self.count / self.counts_per_rev) * circumference
    
    # Update and Publish Encoder Info
    def update_odometry(self):
        distance = self.get_distance()
        self.x += distance * math.cos(self.yaw)
        self.y += distance * math.sin(self.yaw)

        # Add Encoder Info to Odometry Message For further filtering 
        odom_msg = Odometry()
        odom_msg.header.stamp = rospy.Time.now()
        odom_msg.header.frame_id = "odom"
        odom_msg.child_frame_id = "base_link"

        odom_msg.pose.pose.position.x = self.x
        odom_msg.pose.pose.position.y = self.y
        odom_msg.pose.pose.position.z = 0.0

        quaternion = self.yaw_to_quaternion(self.yaw)
        odom_msg.pose.pose.orientation = quaternion

        # Publish the message to '/encoder/odom' topic for Fusion with EKF
        self.odom_pub.publish(odom_msg)

        rospy.loginfo(f"Published Odometry: x={self.x:.2f}, y={self.y:.2f}, yaw={math.degrees(self.yaw):.2f}")

    def yaw_to_quaternion(self, yaw):
        return Quaternion(0, 0, math.sin(yaw / 2), math.cos(yaw / 2))

    def cleanup(self):
        GPIO.cleanup()


# Encoder Stub Class For Testing Dummy Values
class EncoderStub:
    def __init__(self):
        rospy.init_node('encoder_stub', anonymous=True)
        self.x = 0.0  # Initial position X
        self.y = 0.0  # Initial position Y
        self.yaw = 0.0  # Current yaw angle
        self.rate = rospy.Rate(10)  # 10 Hz

        # Subscribe to the yaw topic
        rospy.Subscriber('/imu/yaw', Float32, self.yaw_callback)

        # Publisher for encoder odom
        self.odom_pub = rospy.Publisher('/encoder/odom', Odometry, queue_size=10)

    def yaw_callback(self, msg):
        self.yaw = msg.data
        rospy.loginfo(f"Received Yaw: {self.yaw:.2f}")

        # Simulate position changes
        self.x += 0.1 * self.yaw  # Simulate some change in x position
        self.y += 0.05 * self.yaw  # Simulate some change in y position

        # Publish the updated odometry message
        odom_msg = Odometry()
        odom_msg.header.stamp = rospy.Time.now()
        odom_msg.header.frame_id = "odom"  # Set global frame
        odom_msg.child_frame_id = "base_link"  # Robot frame

        odom_msg.pose.pose.position.x = self.x
        odom_msg.pose.pose.position.y = self.y
        odom_msg.pose.pose.position.z = 0.0

        # Convert yaw to quaternion
        quaternion = Quaternion()
        quaternion.z = math.sin(self.yaw / 2)
        quaternion.w = math.cos(self.yaw / 2)
        odom_msg.pose.pose.orientation = quaternion

        self.odom_pub.publish(odom_msg)

    def run(self):
        while not rospy.is_shutdown():
            self.rate.sleep()


if __name__ == '__main__':
    hall_pins = [17, 27, 22]
    wheel_diameter = 0.1
    counts_per_rev = 20

    encoder = Encoder(hall_pins, wheel_diameter, counts_per_rev)
    try:
        rospy.spin()
        # encoder_stub = EncoderStub()
        # encoder_stub.run()
    except rospy.ROSInterruptException:
        pass
    finally:
        # Clean All GPIO PIns
        # encoder.cleanup()
        pass
