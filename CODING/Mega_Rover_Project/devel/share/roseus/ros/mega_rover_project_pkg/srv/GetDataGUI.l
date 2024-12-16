;; Auto-generated. Do not edit!


(when (boundp 'mega_rover_project_pkg::GetDataGUI)
  (if (not (find-package "MEGA_ROVER_PROJECT_PKG"))
    (make-package "MEGA_ROVER_PROJECT_PKG"))
  (shadow 'GetDataGUI (find-package "MEGA_ROVER_PROJECT_PKG")))
(unless (find-package "MEGA_ROVER_PROJECT_PKG::GETDATAGUI")
  (make-package "MEGA_ROVER_PROJECT_PKG::GETDATAGUI"))
(unless (find-package "MEGA_ROVER_PROJECT_PKG::GETDATAGUIREQUEST")
  (make-package "MEGA_ROVER_PROJECT_PKG::GETDATAGUIREQUEST"))
(unless (find-package "MEGA_ROVER_PROJECT_PKG::GETDATAGUIRESPONSE")
  (make-package "MEGA_ROVER_PROJECT_PKG::GETDATAGUIRESPONSE"))

(in-package "ROS")





(defclass mega_rover_project_pkg::GetDataGUIRequest
  :super ros::object
  :slots (_ROVER_data ))

(defmethod mega_rover_project_pkg::GetDataGUIRequest
  (:init
   (&key
    ((:ROVER_data __ROVER_data) "")
    )
   (send-super :init)
   (setq _ROVER_data (string __ROVER_data))
   self)
  (:ROVER_data
   (&optional __ROVER_data)
   (if __ROVER_data (setq _ROVER_data __ROVER_data)) _ROVER_data)
  (:serialization-length
   ()
   (+
    ;; string _ROVER_data
    4 (length _ROVER_data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ROVER_data
       (write-long (length _ROVER_data) s) (princ _ROVER_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ROVER_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ROVER_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mega_rover_project_pkg::GetDataGUIResponse
  :super ros::object
  :slots (_GUI_data ))

(defmethod mega_rover_project_pkg::GetDataGUIResponse
  (:init
   (&key
    ((:GUI_data __GUI_data) "")
    )
   (send-super :init)
   (setq _GUI_data (string __GUI_data))
   self)
  (:GUI_data
   (&optional __GUI_data)
   (if __GUI_data (setq _GUI_data __GUI_data)) _GUI_data)
  (:serialization-length
   ()
   (+
    ;; string _GUI_data
    4 (length _GUI_data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _GUI_data
       (write-long (length _GUI_data) s) (princ _GUI_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _GUI_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _GUI_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mega_rover_project_pkg::GetDataGUI
  :super ros::object
  :slots ())

(setf (get mega_rover_project_pkg::GetDataGUI :md5sum-) "a4d6ac979e18ace79722eb73f934d137")
(setf (get mega_rover_project_pkg::GetDataGUI :datatype-) "mega_rover_project_pkg/GetDataGUI")
(setf (get mega_rover_project_pkg::GetDataGUI :request) mega_rover_project_pkg::GetDataGUIRequest)
(setf (get mega_rover_project_pkg::GetDataGUI :response) mega_rover_project_pkg::GetDataGUIResponse)

(defmethod mega_rover_project_pkg::GetDataGUIRequest
  (:response () (instance mega_rover_project_pkg::GetDataGUIResponse :init)))

(setf (get mega_rover_project_pkg::GetDataGUIRequest :md5sum-) "a4d6ac979e18ace79722eb73f934d137")
(setf (get mega_rover_project_pkg::GetDataGUIRequest :datatype-) "mega_rover_project_pkg/GetDataGUIRequest")
(setf (get mega_rover_project_pkg::GetDataGUIRequest :definition-)
      "#request msg
string ROVER_data
---
#response msg
string GUI_data

")

(setf (get mega_rover_project_pkg::GetDataGUIResponse :md5sum-) "a4d6ac979e18ace79722eb73f934d137")
(setf (get mega_rover_project_pkg::GetDataGUIResponse :datatype-) "mega_rover_project_pkg/GetDataGUIResponse")
(setf (get mega_rover_project_pkg::GetDataGUIResponse :definition-)
      "#request msg
string ROVER_data
---
#response msg
string GUI_data

")



(provide :mega_rover_project_pkg/GetDataGUI "a4d6ac979e18ace79722eb73f934d137")


