;; Auto-generated. Do not edit!


(when (boundp 'differntial_drive_car::cmd_vel_msg)
  (if (not (find-package "DIFFERNTIAL_DRIVE_CAR"))
    (make-package "DIFFERNTIAL_DRIVE_CAR"))
  (shadow 'cmd_vel_msg (find-package "DIFFERNTIAL_DRIVE_CAR")))
(unless (find-package "DIFFERNTIAL_DRIVE_CAR::CMD_VEL_MSG")
  (make-package "DIFFERNTIAL_DRIVE_CAR::CMD_VEL_MSG"))

(in-package "ROS")
;;//! \htmlinclude cmd_vel_msg.msg.html


(defclass differntial_drive_car::cmd_vel_msg
  :super ros::object
  :slots (_linear_velocity _angular_velocity ))

(defmethod differntial_drive_car::cmd_vel_msg
  (:init
   (&key
    ((:linear_velocity __linear_velocity) 0.0)
    ((:angular_velocity __angular_velocity) 0.0)
    )
   (send-super :init)
   (setq _linear_velocity (float __linear_velocity))
   (setq _angular_velocity (float __angular_velocity))
   self)
  (:linear_velocity
   (&optional __linear_velocity)
   (if __linear_velocity (setq _linear_velocity __linear_velocity)) _linear_velocity)
  (:angular_velocity
   (&optional __angular_velocity)
   (if __angular_velocity (setq _angular_velocity __angular_velocity)) _angular_velocity)
  (:serialization-length
   ()
   (+
    ;; float32 _linear_velocity
    4
    ;; float32 _angular_velocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _linear_velocity
       (sys::poke _linear_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_velocity
       (sys::poke _angular_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _linear_velocity
     (setq _linear_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_velocity
     (setq _angular_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get differntial_drive_car::cmd_vel_msg :md5sum-) "830d49d85ef543fb78a32609382932d6")
(setf (get differntial_drive_car::cmd_vel_msg :datatype-) "differntial_drive_car/cmd_vel_msg")
(setf (get differntial_drive_car::cmd_vel_msg :definition-)
      "# MyCustomMsg.msg
float32 linear_velocity
float32 angular_velocity

")



(provide :differntial_drive_car/cmd_vel_msg "830d49d85ef543fb78a32609382932d6")


