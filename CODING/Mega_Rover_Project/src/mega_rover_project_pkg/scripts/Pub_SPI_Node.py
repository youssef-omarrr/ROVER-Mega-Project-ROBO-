#!/usr/bin/env python3

import rospy
import spidev
from mega_rover_project_pkg.msg import SPI_data

class SPISender:
    def __init__(self):
        rospy.init_node('spi_sender', anonymous=True)
        
        # Create a publisher for the SPI data
        self.publisher = rospy.Publisher('spi_send_topic', SPI_data, queue_size=10)
                
        # Init SPI connection
        try:
            self.spi = spidev.SpiDev()
            self.spi.open(0, 0)  # Open SPI bus 0, device 0 (CHANGE THIS ACCORDING TO HARDWARE)
            self.spi.max_speed_hz = 50000  # Set SPI speed (e.g., 50 kHz)
            self.spi.mode = 0b00  # Set SPI mode (adjust as needed)
            
            rospy.loginfo("SPI sender node initialized")

            # Send SPI data periodically
            self.send_data()
        
        except Exception as e:
            rospy.logerr(f"Failed to initialize SPI: {e}")
            self.simulation_mode = True  # Switch to simulation mode if SPI fails 
    

    def send_data(self):
        if not self.simulation_mode:
            rate = rospy.Rate(1)  # 1 Hz (send data every second)
            while not rospy.is_shutdown():
                # Prepare data to send via SPI
                data_to_send = [0x01, 0x02, 0x03]  # temp data (change as needed)

                # Send data via SPI and receive response
                self.spi.xfer2(data_to_send)  # xfer2 sends data and we don't need to capture the response
                # If we want to recieve at the same time we send do this:
                #  response = self.spi.xfer2(data_to_send)  # xfer2 sends and receives data
                
                # Log the sent and received data
                rospy.loginfo(f"Sending data: {data_to_send}")

                # Create an SPI_data message
                msg = SPI_data()
                msg.SPI_send = str(data_to_send)  # Convert list to string to send in the message

                # Publish the message
                self.publisher.publish(msg)
                
                rate.sleep()
        else:
            rospy.loginfo(f"simulation_mode: {self.simulation_mode}")    

if __name__ == '__main__':
    try:
        sender = SPISender()
        sender.send_data()
         
    except rospy.ROSInterruptException:
        pass
