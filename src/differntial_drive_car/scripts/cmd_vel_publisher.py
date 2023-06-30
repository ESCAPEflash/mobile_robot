#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import JointState
from geometry_msgs.msg import Twist
from differntial_drive_car.msg import cmd_vel_msg


def cmd_vel_subscriber(cmd_vel):
    cmd_vel=Twist()
    linear_vel = cmd_vel.linear.x
    angular_vel = cmd_vel.angular.z
    rospy.loginfo("the linear velocity : %d",linear_vel)
    rospy.loginfo("angualr velocity is : %d",angular_vel)

def main():
    # Initialize the ROS node
    rospy.init_node('joint_states_listener', anonymous=True)
    rospy.loginfo("node has started!")


    rospy.Subscriber("cmd_vel",Twist,callback=cmd_vel_subscriber)
    # Spin and wait for incoming messages
    rospy.spin()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInitException:
        pass
        
