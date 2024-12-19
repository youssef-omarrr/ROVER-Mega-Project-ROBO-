#!/usr/bin/env python3

import rospy
import spidev
from mega_rover_project_pkg.msg import SPI_data
# Receive Mine Flag via SPI -> Publish at 'rostoweb/mine' topic with 'mine' custom message
from mega_rover_project_pkg.msg import mine

class SPIReceiver:
    def __init__(self):
        rospy.init_node('spi_receiver', anonymous=True)
        
        # Create a subscriber for the SPI data
        self.subscriber = rospy.Subscriber('spi_send_topic', SPI_data, self.callback)
        
        # Set up the SPI connection using spidev
        try:
            self.spi = spidev.SpiDev()
            self.spi.open(0, 0)  # Open SPI bus 0, device 0 (CHANGE THIS ACCORDING TO HARDWARE)
            self.spi.max_speed_hz = 50000  # Set SPI clock speed (CHANGE THIS ACCORDING TO HARDWARE)
            
            # Start receiving data from SPI
            self.receive_data()
            
        except Exception as e:
            rospy.logerr(f"Failed to initialize SPI: {e}")
            self.simulation_mode = True  # Switch to simulation mode if SPI fails 
            rospy.loginfo(f"simulation_mode: {self.simulation_mode}")
            
            
    def callback(self, msg):
        # Read data from SPI device (adjust the length of data as needed)
        spi_data = self.spi.readbytes(2)  
        # Convert bytes to string
        received_data = ''.join([chr(byte) for byte in spi_data])  
        
        # Print the received data
        rospy.loginfo(f"Received data from SPI: {received_data}")

        
        # Save the data
        msg = SPI_data()
        msg.SPI_get = received_data
        
        # Publish the message to the ROS topic
        self.publisher.publish(msg)

    def spin(self):
        rospy.spin()
        
if __name__ == '__main__':
    try:
        receiver = SPIReceiver()
        receiver.spin()
    except rospy.ROSInterruptException:
        pass
