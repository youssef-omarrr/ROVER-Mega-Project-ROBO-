#!/usr/bin/env python
import rospy
from mega_rover_project_pkg.msg import custom_msg

class PublisherNode:
    def __init__(self):
        rospy.init_node('publisher', anonymous=True)
        self.publisher = rospy.Publisher('my_topic', custom_msg,queue_size=10)

        self.rate=rospy.Rate(10)

    def publish_message(self):
        while not rospy.is_shutdown():
            msg= custom_msg()
            msg.x=2024
            msg.y=10.0000
            msg.str="Robo-Tech's"
            self.publisher.publish(msg)
            self.rate.sleep()

if __name__ =='__main__':

    try:
        node = PublisherNode()
        node.publish_message()
    except rospy.ROSInterruptException:
        pass