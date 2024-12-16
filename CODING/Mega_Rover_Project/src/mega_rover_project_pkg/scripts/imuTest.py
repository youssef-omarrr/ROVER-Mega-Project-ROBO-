#!/usr/bin/env python

import rospy
from sensor_msgs.msg import Imu
import random

def imu_publisher():
    rospy.init_node('imu_node')
    imu_pub = rospy.Publisher('/imu/data', Imu, queue_size=10)
    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        imu_msg = Imu()
        imu_msg.header.stamp = rospy.Time.now()
        imu_msg.header.frame_id = 'imu_link'

        imu_msg.linear_acceleration.x = random.uniform(-1, 1)
        imu_msg.linear_acceleration.y = random.uniform(-1, 1)
        imu_msg.linear_acceleration.z = random.uniform(-9.8, -9.5)

        imu_msg.angular_velocity.x = random.uniform(-0.1, 0.1)
        imu_msg.angular_velocity.y = random.uniform(-0.1, 0.1)
        imu_msg.angular_velocity.z = random.uniform(-0.1, 0.1)

        imu_pub.publish(imu_msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        imu_publisher()
    except rospy.ROSInterruptException:
        pass