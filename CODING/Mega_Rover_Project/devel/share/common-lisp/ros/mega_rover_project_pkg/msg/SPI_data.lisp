; Auto-generated. Do not edit!


(cl:in-package mega_rover_project_pkg-msg)


;//! \htmlinclude SPI_data.msg.html

(cl:defclass <SPI_data> (roslisp-msg-protocol:ros-message)
  ((SPI_send
    :reader SPI_send
    :initarg :SPI_send
    :type cl:string
    :initform "")
   (SPI_get
    :reader SPI_get
    :initarg :SPI_get
    :type cl:string
    :initform ""))
)

(cl:defclass SPI_data (<SPI_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SPI_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SPI_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mega_rover_project_pkg-msg:<SPI_data> is deprecated: use mega_rover_project_pkg-msg:SPI_data instead.")))

(cl:ensure-generic-function 'SPI_send-val :lambda-list '(m))
(cl:defmethod SPI_send-val ((m <SPI_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mega_rover_project_pkg-msg:SPI_send-val is deprecated.  Use mega_rover_project_pkg-msg:SPI_send instead.")
  (SPI_send m))

(cl:ensure-generic-function 'SPI_get-val :lambda-list '(m))
(cl:defmethod SPI_get-val ((m <SPI_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mega_rover_project_pkg-msg:SPI_get-val is deprecated.  Use mega_rover_project_pkg-msg:SPI_get instead.")
  (SPI_get m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SPI_data>) ostream)
  "Serializes a message object of type '<SPI_data>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'SPI_send))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'SPI_send))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'SPI_get))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'SPI_get))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SPI_data>) istream)
  "Deserializes a message object of type '<SPI_data>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'SPI_send) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'SPI_send) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'SPI_get) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'SPI_get) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SPI_data>)))
  "Returns string type for a message object of type '<SPI_data>"
  "mega_rover_project_pkg/SPI_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SPI_data)))
  "Returns string type for a message object of type 'SPI_data"
  "mega_rover_project_pkg/SPI_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SPI_data>)))
  "Returns md5sum for a message object of type '<SPI_data>"
  "8f9a45316a1e893b5b6f361387ec0a12")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SPI_data)))
  "Returns md5sum for a message object of type 'SPI_data"
  "8f9a45316a1e893b5b6f361387ec0a12")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SPI_data>)))
  "Returns full string definition for message of type '<SPI_data>"
  (cl:format cl:nil "string SPI_send~%string SPI_get~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SPI_data)))
  "Returns full string definition for message of type 'SPI_data"
  (cl:format cl:nil "string SPI_send~%string SPI_get~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SPI_data>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'SPI_send))
     4 (cl:length (cl:slot-value msg 'SPI_get))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SPI_data>))
  "Converts a ROS message object to a list"
  (cl:list 'SPI_data
    (cl:cons ':SPI_send (SPI_send msg))
    (cl:cons ':SPI_get (SPI_get msg))
))
