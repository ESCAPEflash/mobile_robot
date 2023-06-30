
(cl:in-package :asdf)

(defsystem "differntial_drive_car-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "cmd_vel_msg" :depends-on ("_package_cmd_vel_msg"))
    (:file "_package_cmd_vel_msg" :depends-on ("_package"))
  ))