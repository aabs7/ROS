;; Auto-generated. Do not edit!


(when (boundp 'hrwros_msgs::ConvertMetersToFeet)
  (if (not (find-package "HRWROS_MSGS"))
    (make-package "HRWROS_MSGS"))
  (shadow 'ConvertMetersToFeet (find-package "HRWROS_MSGS")))
(unless (find-package "HRWROS_MSGS::CONVERTMETERSTOFEET")
  (make-package "HRWROS_MSGS::CONVERTMETERSTOFEET"))
(unless (find-package "HRWROS_MSGS::CONVERTMETERSTOFEETREQUEST")
  (make-package "HRWROS_MSGS::CONVERTMETERSTOFEETREQUEST"))
(unless (find-package "HRWROS_MSGS::CONVERTMETERSTOFEETRESPONSE")
  (make-package "HRWROS_MSGS::CONVERTMETERSTOFEETRESPONSE"))

(in-package "ROS")





(defclass hrwros_msgs::ConvertMetersToFeetRequest
  :super ros::object
  :slots (_measurement_meters ))

(defmethod hrwros_msgs::ConvertMetersToFeetRequest
  (:init
   (&key
    ((:measurement_meters __measurement_meters) 0.0)
    )
   (send-super :init)
   (setq _measurement_meters (float __measurement_meters))
   self)
  (:measurement_meters
   (&optional __measurement_meters)
   (if __measurement_meters (setq _measurement_meters __measurement_meters)) _measurement_meters)
  (:serialization-length
   ()
   (+
    ;; float64 _measurement_meters
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _measurement_meters
       (sys::poke _measurement_meters (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _measurement_meters
     (setq _measurement_meters (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass hrwros_msgs::ConvertMetersToFeetResponse
  :super ros::object
  :slots (_measurement_feet _success ))

(defmethod hrwros_msgs::ConvertMetersToFeetResponse
  (:init
   (&key
    ((:measurement_feet __measurement_feet) 0.0)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _measurement_feet (float __measurement_feet))
   (setq _success __success)
   self)
  (:measurement_feet
   (&optional __measurement_feet)
   (if __measurement_feet (setq _measurement_feet __measurement_feet)) _measurement_feet)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float64 _measurement_feet
    8
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _measurement_feet
       (sys::poke _measurement_feet (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _measurement_feet
     (setq _measurement_feet (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hrwros_msgs::ConvertMetersToFeet
  :super ros::object
  :slots ())

(setf (get hrwros_msgs::ConvertMetersToFeet :md5sum-) "d1036d55dafbbfcc5e557511312e2fdf")
(setf (get hrwros_msgs::ConvertMetersToFeet :datatype-) "hrwros_msgs/ConvertMetersToFeet")
(setf (get hrwros_msgs::ConvertMetersToFeet :request) hrwros_msgs::ConvertMetersToFeetRequest)
(setf (get hrwros_msgs::ConvertMetersToFeet :response) hrwros_msgs::ConvertMetersToFeetResponse)

(defmethod hrwros_msgs::ConvertMetersToFeetRequest
  (:response () (instance hrwros_msgs::ConvertMetersToFeetResponse :init)))

(setf (get hrwros_msgs::ConvertMetersToFeetRequest :md5sum-) "d1036d55dafbbfcc5e557511312e2fdf")
(setf (get hrwros_msgs::ConvertMetersToFeetRequest :datatype-) "hrwros_msgs/ConvertMetersToFeetRequest")
(setf (get hrwros_msgs::ConvertMetersToFeetRequest :definition-)
      "float64 measurement_meters # Request field
---
float64 measurement_feet   # Response field
bool success

")

(setf (get hrwros_msgs::ConvertMetersToFeetResponse :md5sum-) "d1036d55dafbbfcc5e557511312e2fdf")
(setf (get hrwros_msgs::ConvertMetersToFeetResponse :datatype-) "hrwros_msgs/ConvertMetersToFeetResponse")
(setf (get hrwros_msgs::ConvertMetersToFeetResponse :definition-)
      "float64 measurement_meters # Request field
---
float64 measurement_feet   # Response field
bool success

")



(provide :hrwros_msgs/ConvertMetersToFeet "d1036d55dafbbfcc5e557511312e2fdf")


