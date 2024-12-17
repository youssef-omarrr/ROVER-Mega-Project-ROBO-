#!/usr/bin/env python3

import rospy
import random

# must include srv file and {for server} RESPONSE
from mega_rover_project_pkg.srv import GetDataGUI, GetDataGUIResponse

class Server:
    def __init__(self):
        rospy.init_node('server', anonymous=True)
        self.service = rospy.Service("send_data", GetDataGUI, self.callback)

    def callback(self, req):
        #create response msg
        response = GetDataGUIResponse()
        
        #add data
        response.GUI_data = f"{random.randint(0, 10)}"
        
        #in service we have to return the response
        return response

    def spin(self):
        rospy.spin()

if __name__ == '__main__':
    try:
        node = Server()
        node.spin()
    except rospy.ROSInterruptException:
        pass