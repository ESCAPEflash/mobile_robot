; Auto-generated. Do not edit!


(cl:in-package differntial_drive_car-msg)


;//! \htmlinclude cmd_vel_msg.msg.html

(cl:defclass <cmd_vel_msg> (roslisp-msg-protocol:ros-message)
  ((linear_velocity
    :reader linear_velocity
    :initarg :linear_velocity
    :type cl:float
    :initform 0.0)
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass cmd_vel_msg (<cmd_vel_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cmd_vel_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cmd_vel_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name differntial_drive_car-msg:<cmd_vel_msg> is deprecated: use differntial_drive_car-msg:cmd_vel_msg instead.")))

(cl:ensure-generic-function 'linear_velocity-val :lambda-list '(m))
(cl:defmethod linear_velocity-val ((m <cmd_vel_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader differntial_drive_car-msg:linear_velocity-val is deprecated.  Use differntial_drive_car-msg:linear_velocity instead.")
  (linear_velocity m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <cmd_vel_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader differntial_drive_car-msg:angular_velocity-val is deprecated.  Use differntial_drive_car-msg:angular_velocity instead.")
  (angular_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cmd_vel_msg>) ostream)
  "Serializes a message object of type '<cmd_vel_msg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cmd_vel_msg>) istream)
  "Deserializes a message object of type '<cmd_vel_msg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_velocity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cmd_vel_msg>)))
  "Returns string type for a message object of type '<cmd_vel_msg>"
  "differntial_drive_car/cmd_vel_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cmd_vel_msg)))
  "Returns string type for a message object of type 'cmd_vel_msg"
  "differntial_drive_car/cmd_vel_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cmd_vel_msg>)))
  "Returns md5sum for a message object of type '<cmd_vel_msg>"
  "830d49d85ef543fb78a32609382932d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cmd_vel_msg)))
  "Returns md5sum for a message object of type 'cmd_vel_msg"
  "830d49d85ef543fb78a32609382932d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cmd_vel_msg>)))
  "Returns full string definition for message of type '<cmd_vel_msg>"
  (cl:format cl:nil "# MyCustomMsg.msg~%float32 linear_velocity~%float32 angular_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cmd_vel_msg)))
  "Returns full string definition for message of type 'cmd_vel_msg"
  (cl:format cl:nil "# MyCustomMsg.msg~%float32 linear_velocity~%float32 angular_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cmd_vel_msg>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cmd_vel_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'cmd_vel_msg
    (cl:cons ':linear_velocity (linear_velocity msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
))
