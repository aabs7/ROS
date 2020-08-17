#!/usr/bin/env python

from hrwros_msgs.srv import ConvertMetersToFeet, ConvertMetersToFeetRequest, ConvertMetersToFeetResponse
import rospy
import numpy as np

_CONVERSION_FACTOR_METRES_TO_FEET = 3.28 # Meters -> Feet conversion factor.

# Service callback function.
def process_service_request(req):

    # Instantiate the response message object.
    res = ConvertMetersToFeetResponse()

    # Perform sanity check. Allow only positive real numbers.
    # Compose the response message accordingly.
    if(req.measurement_meters < 0):
        res.success = False
        res.measurement_feet = -np.Inf # Default error value.
    else:
        res.measurement_feet = _CONVERSION_FACTOR_METRES_TO_FEET * req.measurement_meters
        res.success = True

    #Return the response message.
    return res

def meters_to_feet_server():
    # ROS node for the service server.
    rospy.init_node('meters_to_feet_server', anonymous = False)

    # Create a ROS service type.
    service = rospy.Service('meters_to_feet', ConvertMetersToFeet, process_service_request)

    # Log message about service availability.
    rospy.loginfo('Convert meters to feet service is now available.')
    rospy.spin()

if __name__ == "__main__":
    meters_to_feet_server()