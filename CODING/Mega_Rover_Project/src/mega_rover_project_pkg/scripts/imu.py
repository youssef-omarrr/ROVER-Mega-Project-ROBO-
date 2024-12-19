#!/usr/bin/env python3
import rospy
from std_msgs.msg import Float64
from std_msgs.msg import Float32
from sensor_msgs.msg import Imu
import board
import busio
import adafruit_mpu6050
import time
import random


class Imu:
    def __init__(self):
        # Initialize I2C and MPU6050
        i2c = busio.I2C(board.SCL, board.SDA)
        self.sensor = adafruit_mpu6050.MPU6050(i2c)
        
        # ROS publishers
        self.imu_pub = rospy.Publisher('/imu/data', Imu, queue_size=10)
        self.yaw_pub = rospy.Publisher('/imu/yaw', Float64, queue_size=10)
        rospy.init_node('imu_publisher', anonymous=True)
        
        self.rate = rospy.Rate(50)  # 50 Hz
        self.yaw = 0.0
        self.prev_time = time.time()

    def publish_imu_data(self):
        imu_msg = Imu()

        while not rospy.is_shutdown():
            current_time = time.time()
            delta_time = current_time - self.prev_time
            self.prev_time = current_time

            # Get accelerometer data
            accel_x, accel_y, accel_z = self.sensor.acceleration

            # Get gyroscope data
            gyro_x, gyro_y, gyro_z = self.sensor.gyro

            # Integrate gyro_z to get yaw angle (in degrees)
            self.yaw += gyro_z * delta_time
            self.yaw = self.yaw % 360  # Keep yaw between 0 and 360 degrees

            # Fill in the Imu message
            imu_msg.header.stamp = rospy.Time.now()
            imu_msg.linear_acceleration.x = accel_x
            imu_msg.linear_acceleration.y = accel_y
            imu_msg.linear_acceleration.z = accel_z
            imu_msg.angular_velocity.x = gyro_x
            imu_msg.angular_velocity.y = gyro_y
            imu_msg.angular_velocity.z = gyro_z

            # Publish the IMU data and yaw angle
            self.imu_pub.publish(imu_msg)
            self.yaw_pub.publish(self.yaw)

            rospy.loginfo(f"Published Yaw: {self.yaw:.2f} degrees")

            self.rate.sleep()


# IMU Stub Class For Testing With Dummy Values
class ImuStub:
    def __init__(self):
        self.imu_pub = rospy.Publisher('/imu/data', Imu, queue_size=10)
        self.yaw_pub = rospy.Publisher('/imu/yaw', Float32, queue_size=10)
        rospy.init_node('imu_stub')
        self.rate = rospy.Rate(10)  # 10 Hz

    def generate_dummy_data(self):
        # Simulate IMU data
        imu_msg = Imu()
        imu_msg.header.stamp = rospy.Time.now()
        imu_msg.header.frame_id = "imu_link"

        # Simulated angular velocity (rad/s)
        imu_msg.angular_velocity.x = random.uniform(-0.1, 0.1)
        imu_msg.angular_velocity.y = random.uniform(-0.1, 0.1)
        imu_msg.angular_velocity.z = random.uniform(-0.1, 0.1)

        # Simulated linear acceleration (m/s²)
        imu_msg.linear_acceleration.x = random.uniform(-0.5, 0.5)
        imu_msg.linear_acceleration.y = random.uniform(-0.5, 0.5)
        imu_msg.linear_acceleration.z = random.uniform(-0.5, 0.5)

        # Orientation covariance set to indicate no real orientation data
        imu_msg.orientation_covariance[0] = -1

        return imu_msg

    def generate_yaw_data(self):
        # Simulate a yaw angle between -180 to 180 degrees
        yaw = random.uniform(-180.0, 180.0)
        return yaw

    def run(self):
        while not rospy.is_shutdown():
            # Publish IMU data
            imu_msg = self.generate_dummy_data()
            self.imu_pub.publish(imu_msg)

            # Publish Yaw data
            yaw_data = self.generate_yaw_data()
            rospy.loginfo(f"Publishing Yaw: {yaw_data:.2f}")
            self.yaw_pub.publish(Float32(yaw_data))

            self.rate.sleep()

if __name__ == '__main__':
    try:
        imu_publisher = Imu()
        imu_publisher.publish_imu_data()
        # imu_stub = ImuStub()
        # imu_stub.run()
    except rospy.ROSInterruptException:
        pass
