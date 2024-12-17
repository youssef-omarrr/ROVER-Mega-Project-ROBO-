#!/usr/bin/env python3

import rospy
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Quaternion
import random
import math


class OdomPublisher:
    def __init__(self):
        # Initialize ROS node and publisher
        rospy.init_node('encoders_publisher')
        self.odom_pub = rospy.Publisher('/odom/wheel', Odometry, queue_size=10)
        self.rate = rospy.Rate(50)  # 50 Hz

        # Initial position and orientation
        self.x = 0.0
        self.y = 0.0
        self.theta = 0.0

    def update_position(self, vx, vth, dt):
        """Updates the position and orientation based on velocities and time step."""
        delta_x = vx * math.cos(self.theta) * dt
        delta_y = vx * math.sin(self.theta) * dt
        delta_theta = vth * dt

        self.x += delta_x
        self.y += delta_y
        self.theta += delta_theta

    def create_odom_msg(self):
        """Creates and returns an Odometry message based on the current state."""
        odom_msg = Odometry()
        odom_msg.header.stamp = rospy.Time.now()
        odom_msg.header.frame_id = "odom"
        odom_msg.child_frame_id = "base_link"

        # Set position
        odom_msg.pose.pose.position.x = self.x
        odom_msg.pose.pose.position.y = self.y
        odom_msg.pose.pose.position.z = 0.0

        # Set orientation as a quaternion
        odom_msg.pose.pose.orientation = Quaternion(
            0.0,
            0.0,
            math.sin(self.theta / 2),
            math.cos(self.theta / 2)
        )

        return odom_msg

    def run(self):
        """Main loop to publish odometry messages."""
        while not rospy.is_shutdown():
            # Simulate forward movement with slight random drift
            vx = 0.1  # Constant linear velocity
            vth = random.uniform(-0.01, 0.01)  # Slight rotational drift
            dt = 1.0 / 50  # Time step (50 Hz)

            # Update position and orientation
            self.update_position(vx, vth, dt)

            # Create and publish the Odometry message
            odom_msg = self.create_odom_msg()
            self.odom_pub.publish(odom_msg)

            self.rate.sleep()


if __name__ == '__main__':
    try:
        odom_publisher = OdomPublisher()
        odom_publisher.run()
    except rospy.ROSInterruptException:
        pass
