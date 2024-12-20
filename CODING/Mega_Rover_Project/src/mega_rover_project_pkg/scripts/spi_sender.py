#!/usr/bin/env python3

'''
This Python script initializes a ROS node that sends SPI data based on controller input.
1. Initializes the ROS node called 'spi_sender'.
2. Creates a publisher for sending SPI data to the 'spi_send_topic'.
3. Subscribes to the 'webtoros' topic to receive 'controller' messages (L3X and L3Y).
4. Sets up an SPI connection using spidev (bus 0, device 0) with a clock speed of 50 kHz and mode 0.
5. Upon receiving controller data, it extracts L3X and L3Y values, converts them to uint8 (0-255), 
   and sends them via SPI.
6. Publishes the sent data in an 'SPI_data' message to the 'spi_send_topic'.
7. If SPI initialization fails, switches to simulation mode and logs the failure.
'''
import rospy # type: ignore
import spidev
from mega_rover_project_pkg.msg import SPI_data
from mega_rover_project_pkg.msg import controller

class SPISender:
    def __init__(self):
        rospy.init_node('spi_sender', anonymous=True)
        
        # Create a publisher for the SPI data
        self.publisher = rospy.Publisher('spi_send_topic', SPI_data, queue_size=10)
        
        # Subscribe to 'webtoros' to receive the 'controller' message
        rospy.Subscriber('webtoros', controller, self.controller_callback)
                
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
    

    # Callback function to handle 'controller' messages
    def controller_callback(self, msg):
        # Extract L3X and L3Y values from the controller message
        l3x = msg.L3X
        l3y = msg.L3Y
        
        rospy.loginfo(f"Received controller data: L3X={l3x}, L3Y={l3y}")

        # Prepare the data to send via SPI
        '''
        Convert L3X and L3Y to uint8 (0-255)
        Ensure values are within the uint8 range by using modulo
        we do this because the SPI in ESP32 primarily accepts uint8_t
        '''
        data_to_send = [int(l3x) % 256, int(l3y) % 256]  # Convert and ensure within 0-255 range

        # Send the data via SPI and receive response (optional)
        if not self.simulation_mode:
            self.spi.xfer2(data_to_send)  # Send data via SPI
            rospy.loginfo(f"Sending data: {data_to_send}")
            
            # Create an SPI_data message
            spi_msg = SPI_data()  
            spi_msg.SPI_send = data_to_send  # Assign the list directly to SPI_send

            # Publish the message
            self.publisher.publish(spi_msg.SPI_send)
        else:
            rospy.loginfo(f"simulation_mode: {self.simulation_mode}")

    ###============================================###
    # A send_data function if we want to send other data (for future use)
    ###============================================###
    # def send_data(self):
    #     if not self.simulation_mode:
    #         rate = rospy.Rate(1)  # 1 Hz (send data every second)
    #         while not rospy.is_shutdown():
    #             # Prepare data to send via SPI
    #             data_to_send = [0x01, 0x02, 0x03]  # temp data (change as needed)
                
    #             # Send data via SPI
    #             '''
    #             # xfer2 sends data and we don't need to capture the response
    #             # If we want to recieve at the same time we send do this:
    #              -> " response = self.spi.xfer2(data_to_send) " # xfer2 sends and receives data
                 
    #             '''
    #             self.spi.xfer2(data_to_send)  
                
                
    #             # Log the sent and received data
    #             rospy.loginfo(f"Sending data: {data_to_send}")

    #             # Create an SPI_data message
    #             msg = SPI_data()
    #             msg.SPI_send = str(data_to_send)  # Convert list to string to send in the message

    #             # Publish the message
    #             self.publisher.publish(msg)
                
    #             rate.sleep()
    #     else:
    #         rospy.loginfo(f"simulation_mode: {self.simulation_mode}")   
             
    def spin(self):
        rospy.spin()
        
if __name__ == '__main__':
    try:
        sender = SPISender()
        sender.spin()
        
    except rospy.ROSInterruptException:
        pass
