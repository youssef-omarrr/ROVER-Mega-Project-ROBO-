#!/usr/bin/env python3

'''
-This node subscribes to mine flags and odometry data, 
updating and publishing the localization stack.

-It stores the mine flag with the current position, 
and publishes the stack.

Subscribe to 'rostoweb/mine' and receive mine flag
Subscribe to 'odometry/filtered and Read (x,y)
Publish the current mine data and its position
'''

import rospy  # type: ignore
from mega_rover_project_pkg.msg import mine, localization_stack  # Import custom messages
from nav_msgs.msg import Odometry  # type: ignore


class LocalizationStack:
    def __init__(self):
        rospy.init_node("localization_stack_node", anonymous=True)

        # Counter for the number of mines detected
        self.mine_count = 0

        # Variables to store the latest position
        self.current_position = {"x": 0.0, "y": 0.0}

        # Subscribers
        rospy.Subscriber("rostoweb/mine", mine, self.mine_callback)
        rospy.Subscriber("odometry/filtered", Odometry, self.odometry_callback)

        # Publisher for the current mine's localization data
        self.stack_pub = rospy.Publisher("mine_stack", localization_stack, queue_size=10)

        rospy.loginfo("Mine Stack Node Initialized")

    def mine_callback(self, msg):
        # Callback for mine flag. Increment count and publish localization data.
        self.mine_count += 1
        mine_flag = msg.data
        self.publish_mine_info(mine_flag)

    def odometry_callback(self, msg):
        # Callback for odometry data. Updates the current position.
        self.current_position["x"] = msg.pose.pose.position.x
        self.current_position["y"] = msg.pose.pose.position.y
        rospy.loginfo(f"Updated Position: x={self.current_position['x']}, y={self.current_position['y']}")

    def publish_mine_info(self, mine_flag):
        # Sets the localization stack message and publishes it.
        localization_msg = localization_stack()
        localization_msg.num = self.mine_count
        localization_msg.x = self.current_position["x"]
        localization_msg.y = self.current_position["y"]

        # Publish the message
        self.stack_pub.publish(localization_msg)
        rospy.loginfo(f"Published Localization Data: Mine {self.mine_count}, x={localization_msg.x}, y={localization_msg.y}")

    def run(self):
        # Keeps the node running.
        rospy.spin()


if __name__ == "__main__":
    try:
        node = LocalizationStack()
        node.run()
    except rospy.ROSInterruptException:
        pass
