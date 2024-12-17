#!/usr/bin/env python3

import rospy
import smbus
from sensor_msgs.msg import Imu
import random
import math

class IMUPublisher:
    def __init__(self):
        # Initialize ROS node
        rospy.init_node('imu_publisher', anonymous=True)
        
        # Create IMU publisher
        self.imu_pub = rospy.Publisher('/imu/data', Imu, queue_size=10)
        
        # Publishing rate (50 Hz)
        self.rate = rospy.Rate(50)

    def generate_imu_message(self):
        """Generates a simulated IMU message with random data."""
        imu_msg = Imu()
        imu_msg.header.stamp = rospy.Time.now()
        imu_msg.header.frame_id = "imu_link"

        # Simulate orientation (quaternion)
        imu_msg.orientation.x = 0.0
        imu_msg.orientation.y = 0.0
        imu_msg.orientation.z = math.sin(random.uniform(-0.1, 0.1))
        imu_msg.orientation.w = math.cos(random.uniform(-0.1, 0.1))

        # Simulate angular velocity
        imu_msg.angular_velocity.x = random.uniform(-0.01, 0.01)
        imu_msg.angular_velocity.y = random.uniform(-0.01, 0.01)
        imu_msg.angular_velocity.z = random.uniform(-0.1, 0.1)

        # Simulate linear acceleration
        imu_msg.linear_acceleration.x = random.uniform(-0.1, 0.1)
        imu_msg.linear_acceleration.y = random.uniform(-0.1, 0.1)
        imu_msg.linear_acceleration.z = -9.81 + random.uniform(-0.1, 0.1)

        return imu_msg

    def run(self):
        """Main loop for publishing IMU messages."""
        while not rospy.is_shutdown():
            # Generate and publish IMU message
            imu_msg = self.generate_imu_message()
            self.imu_pub.publish(imu_msg)
            self.rate.sleep()


if __name__ == '__main__':
    try:
        imu_publisher = IMUPublisher()
        imu_publisher.run()
    except rospy.ROSInterruptException:
        pass
