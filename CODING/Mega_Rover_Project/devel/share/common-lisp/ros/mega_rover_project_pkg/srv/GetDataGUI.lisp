; Auto-generated. Do not edit!


(cl:in-package mega_rover_project_pkg-srv)


;//! \htmlinclude GetDataGUI-request.msg.html

(cl:defclass <GetDataGUI-request> (roslisp-msg-protocol:ros-message)
  ((ROVER_data
    :reader ROVER_data
    :initarg :ROVER_data
    :type cl:string
    :initform ""))
)

(cl:defclass GetDataGUI-request (<GetDataGUI-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDataGUI-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDataGUI-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mega_rover_project_pkg-srv:<GetDataGUI-request> is deprecated: use mega_rover_project_pkg-srv:GetDataGUI-request instead.")))

(cl:ensure-generic-function 'ROVER_data-val :lambda-list '(m))
(cl:defmethod ROVER_data-val ((m <GetDataGUI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mega_rover_project_pkg-srv:ROVER_data-val is deprecated.  Use mega_rover_project_pkg-srv:ROVER_data instead.")
  (ROVER_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDataGUI-request>) ostream)
  "Serializes a message object of type '<GetDataGUI-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ROVER_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ROVER_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDataGUI-request>) istream)
  "Deserializes a message object of type '<GetDataGUI-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ROVER_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ROVER_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDataGUI-request>)))
  "Returns string type for a service object of type '<GetDataGUI-request>"
  "mega_rover_project_pkg/GetDataGUIRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDataGUI-request)))
  "Returns string type for a service object of type 'GetDataGUI-request"
  "mega_rover_project_pkg/GetDataGUIRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDataGUI-request>)))
  "Returns md5sum for a message object of type '<GetDataGUI-request>"
  "a4d6ac979e18ace79722eb73f934d137")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDataGUI-request)))
  "Returns md5sum for a message object of type 'GetDataGUI-request"
  "a4d6ac979e18ace79722eb73f934d137")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDataGUI-request>)))
  "Returns full string definition for message of type '<GetDataGUI-request>"
  (cl:format cl:nil "#request msg~%string ROVER_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDataGUI-request)))
  "Returns full string definition for message of type 'GetDataGUI-request"
  (cl:format cl:nil "#request msg~%string ROVER_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDataGUI-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ROVER_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDataGUI-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDataGUI-request
    (cl:cons ':ROVER_data (ROVER_data msg))
))
;//! \htmlinclude GetDataGUI-response.msg.html

(cl:defclass <GetDataGUI-response> (roslisp-msg-protocol:ros-message)
  ((GUI_data
    :reader GUI_data
    :initarg :GUI_data
    :type cl:string
    :initform ""))
)

(cl:defclass GetDataGUI-response (<GetDataGUI-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDataGUI-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDataGUI-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mega_rover_project_pkg-srv:<GetDataGUI-response> is deprecated: use mega_rover_project_pkg-srv:GetDataGUI-response instead.")))

(cl:ensure-generic-function 'GUI_data-val :lambda-list '(m))
(cl:defmethod GUI_data-val ((m <GetDataGUI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mega_rover_project_pkg-srv:GUI_data-val is deprecated.  Use mega_rover_project_pkg-srv:GUI_data instead.")
  (GUI_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDataGUI-response>) ostream)
  "Serializes a message object of type '<GetDataGUI-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'GUI_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'GUI_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDataGUI-response>) istream)
  "Deserializes a message object of type '<GetDataGUI-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'GUI_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'GUI_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDataGUI-response>)))
  "Returns string type for a service object of type '<GetDataGUI-response>"
  "mega_rover_project_pkg/GetDataGUIResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDataGUI-response)))
  "Returns string type for a service object of type 'GetDataGUI-response"
  "mega_rover_project_pkg/GetDataGUIResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDataGUI-response>)))
  "Returns md5sum for a message object of type '<GetDataGUI-response>"
  "a4d6ac979e18ace79722eb73f934d137")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDataGUI-response)))
  "Returns md5sum for a message object of type 'GetDataGUI-response"
  "a4d6ac979e18ace79722eb73f934d137")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDataGUI-response>)))
  "Returns full string definition for message of type '<GetDataGUI-response>"
  (cl:format cl:nil "#response msg~%string GUI_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDataGUI-response)))
  "Returns full string definition for message of type 'GetDataGUI-response"
  (cl:format cl:nil "#response msg~%string GUI_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDataGUI-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'GUI_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDataGUI-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDataGUI-response
    (cl:cons ':GUI_data (GUI_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDataGUI)))
  'GetDataGUI-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDataGUI)))
  'GetDataGUI-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDataGUI)))
  "Returns string type for a service object of type '<GetDataGUI>"
  "mega_rover_project_pkg/GetDataGUI")