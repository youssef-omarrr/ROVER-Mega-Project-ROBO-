; Auto-generated. Do not edit!


(cl:in-package mega_rover_project_pkg-msg)


;//! \htmlinclude mine.msg.html

(cl:defclass <mine> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:integer
    :initform 0))
)

(cl:defclass mine (<mine>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mine>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mine)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mega_rover_project_pkg-msg:<mine> is deprecated: use mega_rover_project_pkg-msg:mine instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <mine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mega_rover_project_pkg-msg:flag-val is deprecated.  Use mega_rover_project_pkg-msg:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mine>) ostream)
  "Serializes a message object of type '<mine>"
  (cl:let* ((signed (cl:slot-value msg 'flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mine>) istream)
  "Deserializes a message object of type '<mine>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flag) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mine>)))
  "Returns string type for a message object of type '<mine>"
  "mega_rover_project_pkg/mine")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mine)))
  "Returns string type for a message object of type 'mine"
  "mega_rover_project_pkg/mine")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mine>)))
  "Returns md5sum for a message object of type '<mine>"
  "87ee459c4b4bcda4c5ae0619ce324ea2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mine)))
  "Returns md5sum for a message object of type 'mine"
  "87ee459c4b4bcda4c5ae0619ce324ea2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mine>)))
  "Returns full string definition for message of type '<mine>"
  (cl:format cl:nil "int64 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mine)))
  "Returns full string definition for message of type 'mine"
  (cl:format cl:nil "int64 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mine>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mine>))
  "Converts a ROS message object to a list"
  (cl:list 'mine
    (cl:cons ':flag (flag msg))
))
