#!/usr/bin/env python

import rospy
#from std_msgs.msg import SensorInformation
from hrwros_msgs.msg import SensorInformation
from hrwros_utilities.sim_sensor_data import distSensorData as getSensorData

def sensorInfoPublisher():
    si_publisher = rospy.Publisher('sensor_info', SensorInformation, queue_size = 10)
    rospy.init_node('sensor_info_publisher', anonymous = False)
    rate = rospy.Rate(10)

    #create a sensor information object and fill
    sensor_info = SensorInformation()
    sensor_info.sensor_data.header.stamp = rospy.Time.now()
    sensor_info.sensor_data.header.frame_id = 'distance_sensor_frame'

    sensor_info.sensor_data.radiation_type = sensor_info.sensor_data.ULTRASOUND
    sensor_info.sensor_data.field_of_view = 0.5
    sensor_info.sensor_data.min_range = 0.02
    sensor_info.sensor_data.max_range = 2.00
    sensor_info.maker_name = 'The Ultrasound Company'
    sensor_info.part_number = 123456

    while not rospy.is_shutdown():
        sensor_info.sensor_data.range = getSensorData(sensor_info.sensor_data.radiation_type,sensor_info.sensor_data.min_range,sensor_info.sensor_data.max_range)
        si_publisher.publish(sensor_info)
        rate.sleep()


if __name__== '__main__':
    try:
        sensorInfoPublisher()
    except rospy.ROSInterruptException:
        pass