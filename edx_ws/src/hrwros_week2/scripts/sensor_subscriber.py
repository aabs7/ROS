#!/usr/bin/env python

import rospy
from hrwros_msgs.msg import SensorInformation

# Topic callback function.
def sensorInfoCallback(data):
    rospy.loginfo('Distance reading from the sensor is: %f', data.sensor_data.range)

def sensorInfoListener():
    rospy.init_node('sensor_info_subscriber', anonymous=False)

    rospy.Subscriber('sensor_info', SensorInformation, sensorInfoCallback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()


if __name__ == '__main__':
    sensorInfoListener()