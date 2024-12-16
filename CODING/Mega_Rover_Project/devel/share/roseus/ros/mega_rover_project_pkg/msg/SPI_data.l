;; Auto-generated. Do not edit!


(when (boundp 'mega_rover_project_pkg::SPI_data)
  (if (not (find-package "MEGA_ROVER_PROJECT_PKG"))
    (make-package "MEGA_ROVER_PROJECT_PKG"))
  (shadow 'SPI_data (find-package "MEGA_ROVER_PROJECT_PKG")))
(unless (find-package "MEGA_ROVER_PROJECT_PKG::SPI_DATA")
  (make-package "MEGA_ROVER_PROJECT_PKG::SPI_DATA"))

(in-package "ROS")
;;//! \htmlinclude SPI_data.msg.html


(defclass mega_rover_project_pkg::SPI_data
  :super ros::object
  :slots (_SPI_send _SPI_get ))

(defmethod mega_rover_project_pkg::SPI_data
  (:init
   (&key
    ((:SPI_send __SPI_send) "")
    ((:SPI_get __SPI_get) "")
    )
   (send-super :init)
   (setq _SPI_send (string __SPI_send))
   (setq _SPI_get (string __SPI_get))
   self)
  (:SPI_send
   (&optional __SPI_send)
   (if __SPI_send (setq _SPI_send __SPI_send)) _SPI_send)
  (:SPI_get
   (&optional __SPI_get)
   (if __SPI_get (setq _SPI_get __SPI_get)) _SPI_get)
  (:serialization-length
   ()
   (+
    ;; string _SPI_send
    4 (length _SPI_send)
    ;; string _SPI_get
    4 (length _SPI_get)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _SPI_send
       (write-long (length _SPI_send) s) (princ _SPI_send s)
     ;; string _SPI_get
       (write-long (length _SPI_get) s) (princ _SPI_get s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _SPI_send
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _SPI_send (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _SPI_get
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _SPI_get (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mega_rover_project_pkg::SPI_data :md5sum-) "8f9a45316a1e893b5b6f361387ec0a12")
(setf (get mega_rover_project_pkg::SPI_data :datatype-) "mega_rover_project_pkg/SPI_data")
(setf (get mega_rover_project_pkg::SPI_data :definition-)
      "string SPI_send
string SPI_get
")



(provide :mega_rover_project_pkg/SPI_data "8f9a45316a1e893b5b6f361387ec0a12")


