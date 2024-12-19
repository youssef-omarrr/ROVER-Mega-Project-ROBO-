;; Auto-generated. Do not edit!


(when (boundp 'mega_rover_project_pkg::controller)
  (if (not (find-package "MEGA_ROVER_PROJECT_PKG"))
    (make-package "MEGA_ROVER_PROJECT_PKG"))
  (shadow 'controller (find-package "MEGA_ROVER_PROJECT_PKG")))
(unless (find-package "MEGA_ROVER_PROJECT_PKG::CONTROLLER")
  (make-package "MEGA_ROVER_PROJECT_PKG::CONTROLLER"))

(in-package "ROS")
;;//! \htmlinclude controller.msg.html


(defclass mega_rover_project_pkg::controller
  :super ros::object
  :slots (_swim _fly _shoot _L3X _L3Y _R3X _R3Y ))

(defmethod mega_rover_project_pkg::controller
  (:init
   (&key
    ((:swim __swim) 0)
    ((:fly __fly) 0)
    ((:shoot __shoot) 0)
    ((:L3X __L3X) 0.0)
    ((:L3Y __L3Y) 0.0)
    ((:R3X __R3X) 0.0)
    ((:R3Y __R3Y) 0.0)
    )
   (send-super :init)
   (setq _swim (round __swim))
   (setq _fly (round __fly))
   (setq _shoot (round __shoot))
   (setq _L3X (float __L3X))
   (setq _L3Y (float __L3Y))
   (setq _R3X (float __R3X))
   (setq _R3Y (float __R3Y))
   self)
  (:swim
   (&optional __swim)
   (if __swim (setq _swim __swim)) _swim)
  (:fly
   (&optional __fly)
   (if __fly (setq _fly __fly)) _fly)
  (:shoot
   (&optional __shoot)
   (if __shoot (setq _shoot __shoot)) _shoot)
  (:L3X
   (&optional __L3X)
   (if __L3X (setq _L3X __L3X)) _L3X)
  (:L3Y
   (&optional __L3Y)
   (if __L3Y (setq _L3Y __L3Y)) _L3Y)
  (:R3X
   (&optional __R3X)
   (if __R3X (setq _R3X __R3X)) _R3X)
  (:R3Y
   (&optional __R3Y)
   (if __R3Y (setq _R3Y __R3Y)) _R3Y)
  (:serialization-length
   ()
   (+
    ;; int32 _swim
    4
    ;; int32 _fly
    4
    ;; int32 _shoot
    4
    ;; float64 _L3X
    8
    ;; float64 _L3Y
    8
    ;; float64 _R3X
    8
    ;; float64 _R3Y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _swim
       (write-long _swim s)
     ;; int32 _fly
       (write-long _fly s)
     ;; int32 _shoot
       (write-long _shoot s)
     ;; float64 _L3X
       (sys::poke _L3X (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _L3Y
       (sys::poke _L3Y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _R3X
       (sys::poke _R3X (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _R3Y
       (sys::poke _R3Y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _swim
     (setq _swim (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _fly
     (setq _fly (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _shoot
     (setq _shoot (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _L3X
     (setq _L3X (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _L3Y
     (setq _L3Y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _R3X
     (setq _R3X (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _R3Y
     (setq _R3Y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mega_rover_project_pkg::controller :md5sum-) "23a2b0ddfb78ba3b65d96a5b10f39992")
(setf (get mega_rover_project_pkg::controller :datatype-) "mega_rover_project_pkg/controller")
(setf (get mega_rover_project_pkg::controller :definition-)
      "int32 swim
int32 fly
int32 shoot
float64 L3X
float64 L3Y
float64 R3X
float64 R3Y
")



(provide :mega_rover_project_pkg/controller "23a2b0ddfb78ba3b65d96a5b10f39992")


