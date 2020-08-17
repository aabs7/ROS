; Auto-generated. Do not edit!


(cl:in-package hrwros_msgs-srv)


;//! \htmlinclude ConvertMetersToFeet-request.msg.html

(cl:defclass <ConvertMetersToFeet-request> (roslisp-msg-protocol:ros-message)
  ((measurement_meters
    :reader measurement_meters
    :initarg :measurement_meters
    :type cl:float
    :initform 0.0))
)

(cl:defclass ConvertMetersToFeet-request (<ConvertMetersToFeet-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConvertMetersToFeet-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConvertMetersToFeet-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_msgs-srv:<ConvertMetersToFeet-request> is deprecated: use hrwros_msgs-srv:ConvertMetersToFeet-request instead.")))

(cl:ensure-generic-function 'measurement_meters-val :lambda-list '(m))
(cl:defmethod measurement_meters-val ((m <ConvertMetersToFeet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-srv:measurement_meters-val is deprecated.  Use hrwros_msgs-srv:measurement_meters instead.")
  (measurement_meters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConvertMetersToFeet-request>) ostream)
  "Serializes a message object of type '<ConvertMetersToFeet-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'measurement_meters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConvertMetersToFeet-request>) istream)
  "Deserializes a message object of type '<ConvertMetersToFeet-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'measurement_meters) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConvertMetersToFeet-request>)))
  "Returns string type for a service object of type '<ConvertMetersToFeet-request>"
  "hrwros_msgs/ConvertMetersToFeetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConvertMetersToFeet-request)))
  "Returns string type for a service object of type 'ConvertMetersToFeet-request"
  "hrwros_msgs/ConvertMetersToFeetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConvertMetersToFeet-request>)))
  "Returns md5sum for a message object of type '<ConvertMetersToFeet-request>"
  "d1036d55dafbbfcc5e557511312e2fdf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConvertMetersToFeet-request)))
  "Returns md5sum for a message object of type 'ConvertMetersToFeet-request"
  "d1036d55dafbbfcc5e557511312e2fdf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConvertMetersToFeet-request>)))
  "Returns full string definition for message of type '<ConvertMetersToFeet-request>"
  (cl:format cl:nil "float64 measurement_meters # Request field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConvertMetersToFeet-request)))
  "Returns full string definition for message of type 'ConvertMetersToFeet-request"
  (cl:format cl:nil "float64 measurement_meters # Request field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConvertMetersToFeet-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConvertMetersToFeet-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConvertMetersToFeet-request
    (cl:cons ':measurement_meters (measurement_meters msg))
))
;//! \htmlinclude ConvertMetersToFeet-response.msg.html

(cl:defclass <ConvertMetersToFeet-response> (roslisp-msg-protocol:ros-message)
  ((measurement_feet
    :reader measurement_feet
    :initarg :measurement_feet
    :type cl:float
    :initform 0.0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ConvertMetersToFeet-response (<ConvertMetersToFeet-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConvertMetersToFeet-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConvertMetersToFeet-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_msgs-srv:<ConvertMetersToFeet-response> is deprecated: use hrwros_msgs-srv:ConvertMetersToFeet-response instead.")))

(cl:ensure-generic-function 'measurement_feet-val :lambda-list '(m))
(cl:defmethod measurement_feet-val ((m <ConvertMetersToFeet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-srv:measurement_feet-val is deprecated.  Use hrwros_msgs-srv:measurement_feet instead.")
  (measurement_feet m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ConvertMetersToFeet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-srv:success-val is deprecated.  Use hrwros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConvertMetersToFeet-response>) ostream)
  "Serializes a message object of type '<ConvertMetersToFeet-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'measurement_feet))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConvertMetersToFeet-response>) istream)
  "Deserializes a message object of type '<ConvertMetersToFeet-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'measurement_feet) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConvertMetersToFeet-response>)))
  "Returns string type for a service object of type '<ConvertMetersToFeet-response>"
  "hrwros_msgs/ConvertMetersToFeetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConvertMetersToFeet-response)))
  "Returns string type for a service object of type 'ConvertMetersToFeet-response"
  "hrwros_msgs/ConvertMetersToFeetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConvertMetersToFeet-response>)))
  "Returns md5sum for a message object of type '<ConvertMetersToFeet-response>"
  "d1036d55dafbbfcc5e557511312e2fdf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConvertMetersToFeet-response)))
  "Returns md5sum for a message object of type 'ConvertMetersToFeet-response"
  "d1036d55dafbbfcc5e557511312e2fdf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConvertMetersToFeet-response>)))
  "Returns full string definition for message of type '<ConvertMetersToFeet-response>"
  (cl:format cl:nil "float64 measurement_feet   # Response field~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConvertMetersToFeet-response)))
  "Returns full string definition for message of type 'ConvertMetersToFeet-response"
  (cl:format cl:nil "float64 measurement_feet   # Response field~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConvertMetersToFeet-response>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConvertMetersToFeet-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConvertMetersToFeet-response
    (cl:cons ':measurement_feet (measurement_feet msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConvertMetersToFeet)))
  'ConvertMetersToFeet-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConvertMetersToFeet)))
  'ConvertMetersToFeet-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConvertMetersToFeet)))
  "Returns string type for a service object of type '<ConvertMetersToFeet>"
  "hrwros_msgs/ConvertMetersToFeet")