
(cl:in-package :asdf)

(defsystem "hrwros_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ConvertMetersToFeet" :depends-on ("_package_ConvertMetersToFeet"))
    (:file "_package_ConvertMetersToFeet" :depends-on ("_package"))
  ))