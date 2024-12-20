#!/usr/bin/env python3

'''
-This node subscribes to mine flags and odometry data, 
updating and publishing the localization stack.

-It stores the mine flag with the current position, 
and publishes the stack.

Subscribe to 'rostoweb/mine' and receive mine flag
Subscribe to 'odometry/filtered and Read (x,y)
Add to a Localization Stack 
Publish to a Localization Stack Node
'''
import rospy # type: ignore
from mega_rover_project_pkg.msg import mine
from mega_rover_project_pkg import localization_stack
from nav_msgs.msg import Odometry # type: ignore
import math

class LocalizationStack:
    def __init__(self):
        rospy.init_node("localization_stack_node", anonymous=True)

        # Stack to store localization data (mine flag + position)
        self.localization_stack = []

        # Variables to store the latest position
        self.current_position = {"x": 0.0, "y": 0.0}

        # Subscribers
        rospy.Subscriber("rostoweb/mine", mine, self.mine_callback)
        rospy.Subscriber("odometry/filtered", Odometry, self.odometry_callback)

        # Publisher for stack status
        self.stack_pub = rospy.Publisher("localization_stack_status", mine, queue_size=10)

        rospy.loginfo("Localization Stack Node Initialized")

    def mine_callback(self, msg):
        # Callback for mine flag. Adds mine data and position to the stack 
        mine_flag = msg.data
        stack_entry = {
            "mine_flag": mine_flag,
            "position": {"x": self.current_position["x"], "y": self.current_position["y"]},
        }
        self.localization_stack.append(stack_entry)
        rospy.loginfo(f"Added to Localization Stack: {stack_entry}")
        self.publish_stack_status()

    def odometry_callback(self, msg):
        # Callback for odometry data. Updates the current position.
        self.current_position["x"] = msg.pose.pose.position.x
        self.current_position["y"] = msg.pose.pose.position.y
        rospy.loginfo(f"Updated Position: x={self.current_position['x']}, y={self.current_position['y']}")

    def publish_stack_status(self):
        # Publishes the current localization stack.
        stack_status = f"Current Localization Stack: {self.localization_stack}"
        self.stack_pub.publish(stack_status)

    def run(self):
        # Keeps the node running 
        rospy.spin()


if __name__ == "__main__":
    try:
        node = LocalizationStack()
        node.run()
    except rospy.ROSInterruptException:
        pass