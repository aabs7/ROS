
(cl:in-package :asdf)

(defsystem "hrwros_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "SensorInformation" :depends-on ("_package_SensorInformation"))
    (:file "_package_SensorInformation" :depends-on ("_package"))
  ))