#!/usr/bin/env python3

'''
- This ROS node subscribes to the /odometry/filtered topic.
- processes incoming odometry data.
- converts the quaternion orientation to Euler angles.
- It then logs the filtered position and orientation data (roll, pitch, yaw).

'''

import rospy # type: ignore
from nav_msgs.msg import Odometry # type: ignore
import math

class FilteredOdometryPresenter:
    def __init__(self):
        # Initialize the ROS node
        rospy.init_node('filtered_values_presenter', anonymous=False)
        
        # Subscribe to the /odometry/filtered topic
        rospy.Subscriber('/odometry/filtered', Odometry, self.odometry_callback)
        
        rospy.loginfo("Subscribed to /odometry/filtered. Waiting for data...")

    def odometry_callback(self, msg):
        """Callback function to process incoming odometry messages."""
        rospy.loginfo("Received odometry data.")  # Check if the callback is triggered

        # Extract position data
        x = msg.pose.pose.position.x
        y = msg.pose.pose.position.y
        z = msg.pose.pose.position.z

        # Extract orientation as a quaternion
        qx = msg.pose.pose.orientation.x
        qy = msg.pose.pose.orientation.y
        qz = msg.pose.pose.orientation.z
        qw = msg.pose.pose.orientation.w

        # Convert quaternion to Euler angles (roll, pitch, yaw)
        roll, pitch, yaw = self.quaternion_to_euler(qx, qy, qz, qw)

        # Print formatted values
        rospy.loginfo("\nFiltered Odometry Data:")
        rospy.loginfo(f"Position: x = {x:.2f}, y = {y:.2f}, z = {z:.2f}")
        rospy.loginfo(f"Orientation: roll = {roll:.2f}, pitch = {pitch:.2f}, yaw = {yaw:.2f}")

    @staticmethod
    def quaternion_to_euler(x, y, z, w):
        """Convert a quaternion into roll, pitch, and yaw (Euler angles)."""
        # Conversion of quaternion to roll, pitch, and yaw
        t0 = +2.0 * (w * x + y * z)
        t1 = +1.0 - 2.0 * (x * x + y * y)
        roll = math.atan2(t0, t1)

        t2 = +2.0 * (w * y - z * x)
        t2 = +1.0 if t2 > +1.0 else t2
        t2 = -1.0 if t2 < -1.0 else t2
        pitch = math.asin(t2)

        t3 = +2.0 * (w * z + x * y)
        t4 = +1.0 - 2.0 * (y * y + z * z)
        yaw = math.atan2(t3, t4)

        return roll, pitch, yaw

    def run(self):
        """Keep the node running until interrupted."""
        rospy.spin()

if __name__ == '__main__':
    try:
        presenter = FilteredOdometryPresenter()
        presenter.run()
    except rospy.ROSInterruptException:
        pass
