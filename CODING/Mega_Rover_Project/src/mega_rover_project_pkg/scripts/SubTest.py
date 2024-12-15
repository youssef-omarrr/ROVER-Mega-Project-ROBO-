#!/usr/bin/env python
import rospy
from mega_rover_project_pkg.msg import custom_msg

class SubscriberNode:
    def __init__(self):
        rospy.init_node('subscriber',anonymous=True)
        self.subscriber =rospy.Subscriber('my_topic',custom_msg,self.callback)

    def callback(self,msg):
        rospy.loginfo("%d It's %s %f thanniversary!!",msg.x,msg.str,msg.y)

    def spin(self):
        rospy.spin()

if __name__ =='__main__':

    try:
         node = SubscriberNode()
         node.spin()
    except rospy.ROSInterruptException:
        pass