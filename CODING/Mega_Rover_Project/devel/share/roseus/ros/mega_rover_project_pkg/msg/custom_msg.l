;; Auto-generated. Do not edit!


(when (boundp 'mega_rover_project_pkg::custom_msg)
  (if (not (find-package "MEGA_ROVER_PROJECT_PKG"))
    (make-package "MEGA_ROVER_PROJECT_PKG"))
  (shadow 'custom_msg (find-package "MEGA_ROVER_PROJECT_PKG")))
(unless (find-package "MEGA_ROVER_PROJECT_PKG::CUSTOM_MSG")
  (make-package "MEGA_ROVER_PROJECT_PKG::CUSTOM_MSG"))

(in-package "ROS")
;;//! \htmlinclude custom_msg.msg.html


(defclass mega_rover_project_pkg::custom_msg
  :super ros::object
  :slots (_x _y _str ))

(defmethod mega_rover_project_pkg::custom_msg
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:str __str) "")
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _str (string __str))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:str
   (&optional __str)
   (if __str (setq _str __str)) _str)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; string _str
    4 (length _str)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _str
       (write-long (length _str) s) (princ _str s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mega_rover_project_pkg::custom_msg :md5sum-) "1d09ed5c2d308c9f328435aec02af05a")
(setf (get mega_rover_project_pkg::custom_msg :datatype-) "mega_rover_project_pkg/custom_msg")
(setf (get mega_rover_project_pkg::custom_msg :definition-)
      "float32 x
float32 y
string str
")



(provide :mega_rover_project_pkg/custom_msg "1d09ed5c2d308c9f328435aec02af05a")


