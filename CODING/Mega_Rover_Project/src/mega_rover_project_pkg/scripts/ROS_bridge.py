#!/usr/bin/env python3

import rospy
import random

#must include srv file and {for client} REQUEST
from mega_rover_project_pkg.srv import GetDataGUI, GetDataGUIRequest

class Client:
    def __init__(self):
        rospy.init_node('client', anonymous=True)
        self.client = rospy.ServiceProxy("send_data", GetDataGUI)
        #a client has to wait for the server to be active
        self.client.wait_for_service()

        # Send request
        self.send_request()

    def send_request(self):
        #create a request object
        req = GetDataGUIRequest()
        
        # # Send data to GUI from here
        # req.ROVER_data = "test rover"

        #call the serve rand get response
        response = self.client(req)
        
        #test
        rospy.loginfo(f"\033[91m Data from GUI: {response.GUI_data}\033[0m ")
        rospy.loginfo("******************************")

    def loop_requests(self):
        # Loop to send requests multiple times
        rate = rospy.Rate(1)  # 1 Hz (one request per second)
        while not rospy.is_shutdown():
            self.send_request()
            rate.sleep()  # Sleep to maintain the loop rate

if __name__ == '__main__':
    try:
        node = Client()
        node.loop_requests()
    except rospy.ROSInterruptException:
        pass

