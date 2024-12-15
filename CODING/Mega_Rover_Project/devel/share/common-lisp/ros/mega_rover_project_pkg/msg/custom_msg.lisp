; Auto-generated. Do not edit!


(cl:in-package mega_rover_project_pkg-msg)


;//! \htmlinclude custom_msg.msg.html

(cl:defclass <custom_msg> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (str
    :reader str
    :initarg :str
    :type cl:string
    :initform ""))
)

(cl:defclass custom_msg (<custom_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <custom_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'custom_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mega_rover_project_pkg-msg:<custom_msg> is deprecated: use mega_rover_project_pkg-msg:custom_msg instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <custom_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mega_rover_project_pkg-msg:x-val is deprecated.  Use mega_rover_project_pkg-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <custom_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mega_rover_project_pkg-msg:y-val is deprecated.  Use mega_rover_project_pkg-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'str-val :lambda-list '(m))
(cl:defmethod str-val ((m <custom_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mega_rover_project_pkg-msg:str-val is deprecated.  Use mega_rover_project_pkg-msg:str instead.")
  (str m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <custom_msg>) ostream)
  "Serializes a message object of type '<custom_msg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'str))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <custom_msg>) istream)
  "Deserializes a message object of type '<custom_msg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'str) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'str) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<custom_msg>)))
  "Returns string type for a message object of type '<custom_msg>"
  "mega_rover_project_pkg/custom_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'custom_msg)))
  "Returns string type for a message object of type 'custom_msg"
  "mega_rover_project_pkg/custom_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<custom_msg>)))
  "Returns md5sum for a message object of type '<custom_msg>"
  "1d09ed5c2d308c9f328435aec02af05a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'custom_msg)))
  "Returns md5sum for a message object of type 'custom_msg"
  "1d09ed5c2d308c9f328435aec02af05a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<custom_msg>)))
  "Returns full string definition for message of type '<custom_msg>"
  (cl:format cl:nil "float32 x~%float32 y~%string str~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'custom_msg)))
  "Returns full string definition for message of type 'custom_msg"
  (cl:format cl:nil "float32 x~%float32 y~%string str~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <custom_msg>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'str))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <custom_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'custom_msg
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':str (str msg))
))
