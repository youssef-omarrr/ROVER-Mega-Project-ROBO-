#!/usr/bin/env python3

'''
This Python script initializes a ROS node that listens for SPI data and publishes a mine flag
1. Initializes the ROS node called 'spi_receiver'.
2. Sets up a publisher to send 'mine' messages to the 'rostoweb/mine' topic.
3. Establishes an SPI connection using spidev to receive data from an SPI bus.
4. Reads 8 bytes from the SPI connection (expected to be an int64 flag indicating a mine).
5. Logs the received mine flag and publishes it as a 'mine' message to the 'rostoweb/mine' topic.
6. If SPI connection fails, switches to simulation mode and logs the failure.
'''
import rospy
import spidev
from mega_rover_project_pkg.msg import SPI_data
from mega_rover_project_pkg.msg import mine

class SPIReceiver:
    def __init__(self):
        rospy.init_node('spi_receiver', anonymous=True)
        
        # Create a subscriber for the SPI data
        self.subscriber = rospy.Subscriber('spi_send_topic', SPI_data, self.callback)
        
        # Initialize the publisher for 'rostoweb/mine' topic
        self.mine_publisher = rospy.Publisher('rostoweb/mine', mine, queue_size=10)
        
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
            
    def receive_data(self):
        # Read the Mine Flag via SPI (assuming it is a 1-byte flag or 8-bit data)
        mine_flag = self.spi.readbytes(8)  # Read 8 bytes for an int64 flag
        
        # Log the received Mine Flag
        rospy.loginfo(f"Received Mine Flag: {mine_flag}")
        
        # Create a 'mine' message and set the flag
        mine_msg = mine()
        mine_msg.mine_flag = mine_flag
        
        # Publish the Mine Flag to the 'rostoweb/mine' topic
        self.mine_publisher.publish(mine_msg)
    
    ###============================================###
    # A recieve function if we want to recieve other data (for future use)
    ###============================================###
    # def callback(self, msg):
    #     # Read data from SPI device (adjust the length of data as needed)
    #     spi_data = self.spi.readbytes(2)  
    #     # Convert bytes to string
    #     received_data = ''.join([chr(byte) for byte in spi_data])  
        
    #     # Print the received data
    #     rospy.loginfo(f"Received data from SPI: {received_data}")
        
    #     # Save the data
    #     msg = SPI_data()
    #     msg.SPI_get = received_data
        
    #     # Publish the message to the ROS topic
    #     self.publisher.publish(msg)

    def spin(self):
        rospy.spin()
        
if __name__ == '__main__':
    try:
        receiver = SPIReceiver()
        receiver.spin()
    except rospy.ROSInterruptException:
        pass
