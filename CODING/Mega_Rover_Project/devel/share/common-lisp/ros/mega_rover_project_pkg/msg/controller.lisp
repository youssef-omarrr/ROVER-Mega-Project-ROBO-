; Auto-generated. Do not edit!


(cl:in-package mega_rover_project_pkg-msg)


;//! \htmlinclude controller.msg.html

(cl:defclass <controller> (roslisp-msg-protocol:ros-message)
  ((swim
    :reader swim
    :initarg :swim
    :type cl:integer
    :initform 0)
   (fly
    :reader fly
    :initarg :fly
    :type cl:integer
    :initform 0)
   (shoot
    :reader shoot
    :initarg :shoot
    :type cl:integer
    :initform 0)
   (L3X
    :reader L3X
    :initarg :L3X
    :type cl:float
    :initform 0.0)
   (L3Y
    :reader L3Y
    :initarg :L3Y
    :type cl:float
    :initform 0.0)
   (R3X
    :reader R3X
    :initarg :R3X
    :type cl:float
    :initform 0.0)
   (R3Y
    :reader R3Y
    :initarg :R3Y
    :type cl:float
    :initform 0.0))
)

(cl:defclass controller (<controller>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <controller>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'controller)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mega_rover_project_pkg-msg:<controller> is deprecated: use mega_rover_project_pkg-msg:controller instead.")))

(cl:ensure-generic-function 'swim-val :lambda-list '(m))
(cl:defmethod swim-val ((m <controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mega_rover_project_pkg-msg:swim-val is deprecated.  Use mega_rover_project_pkg-msg:swim instead.")
  (swim m))

(cl:ensure-generic-function 'fly-val :lambda-list '(m))
(cl:defmethod fly-val ((m <controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mega_rover_project_pkg-msg:fly-val is deprecated.  Use mega_rover_project_pkg-msg:fly instead.")
  (fly m))

(cl:ensure-generic-function 'shoot-val :lambda-list '(m))
(cl:defmethod shoot-val ((m <controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mega_rover_project_pkg-msg:shoot-val is deprecated.  Use mega_rover_project_pkg-msg:shoot instead.")
  (shoot m))

(cl:ensure-generic-function 'L3X-val :lambda-list '(m))
(cl:defmethod L3X-val ((m <controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mega_rover_project_pkg-msg:L3X-val is deprecated.  Use mega_rover_project_pkg-msg:L3X instead.")
  (L3X m))

(cl:ensure-generic-function 'L3Y-val :lambda-list '(m))
(cl:defmethod L3Y-val ((m <controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mega_rover_project_pkg-msg:L3Y-val is deprecated.  Use mega_rover_project_pkg-msg:L3Y instead.")
  (L3Y m))

(cl:ensure-generic-function 'R3X-val :lambda-list '(m))
(cl:defmethod R3X-val ((m <controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mega_rover_project_pkg-msg:R3X-val is deprecated.  Use mega_rover_project_pkg-msg:R3X instead.")
  (R3X m))

(cl:ensure-generic-function 'R3Y-val :lambda-list '(m))
(cl:defmethod R3Y-val ((m <controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mega_rover_project_pkg-msg:R3Y-val is deprecated.  Use mega_rover_project_pkg-msg:R3Y instead.")
  (R3Y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <controller>) ostream)
  "Serializes a message object of type '<controller>"
  (cl:let* ((signed (cl:slot-value msg 'swim)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fly)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'shoot)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'L3X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'L3Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'R3X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'R3Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <controller>) istream)
  "Deserializes a message object of type '<controller>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'swim) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fly) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'shoot) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L3X) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L3Y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R3X) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R3Y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<controller>)))
  "Returns string type for a message object of type '<controller>"
  "mega_rover_project_pkg/controller")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'controller)))
  "Returns string type for a message object of type 'controller"
  "mega_rover_project_pkg/controller")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<controller>)))
  "Returns md5sum for a message object of type '<controller>"
  "23a2b0ddfb78ba3b65d96a5b10f39992")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'controller)))
  "Returns md5sum for a message object of type 'controller"
  "23a2b0ddfb78ba3b65d96a5b10f39992")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<controller>)))
  "Returns full string definition for message of type '<controller>"
  (cl:format cl:nil "int32 swim~%int32 fly~%int32 shoot~%float64 L3X~%float64 L3Y~%float64 R3X~%float64 R3Y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'controller)))
  "Returns full string definition for message of type 'controller"
  (cl:format cl:nil "int32 swim~%int32 fly~%int32 shoot~%float64 L3X~%float64 L3Y~%float64 R3X~%float64 R3Y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <controller>))
  (cl:+ 0
     4
     4
     4
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <controller>))
  "Converts a ROS message object to a list"
  (cl:list 'controller
    (cl:cons ':swim (swim msg))
    (cl:cons ':fly (fly msg))
    (cl:cons ':shoot (shoot msg))
    (cl:cons ':L3X (L3X msg))
    (cl:cons ':L3Y (L3Y msg))
    (cl:cons ':R3X (R3X msg))
    (cl:cons ':R3Y (R3Y msg))
))
