;; Auto-generated. Do not edit!


(when (boundp 'mega_rover_project_pkg::mine)
  (if (not (find-package "MEGA_ROVER_PROJECT_PKG"))
    (make-package "MEGA_ROVER_PROJECT_PKG"))
  (shadow 'mine (find-package "MEGA_ROVER_PROJECT_PKG")))
(unless (find-package "MEGA_ROVER_PROJECT_PKG::MINE")
  (make-package "MEGA_ROVER_PROJECT_PKG::MINE"))

(in-package "ROS")
;;//! \htmlinclude mine.msg.html


(defclass mega_rover_project_pkg::mine
  :super ros::object
  :slots (_flag ))

(defmethod mega_rover_project_pkg::mine
  (:init
   (&key
    ((:flag __flag) 0)
    )
   (send-super :init)
   (setq _flag (round __flag))
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; int64 _flag
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _flag
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _flag (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _flag) (= (length (_flag . bv)) 2)) ;; bignum
              (write-long (ash (elt (_flag . bv) 0) 0) s)
              (write-long (ash (elt (_flag . bv) 1) -1) s))
             ((and (class _flag) (= (length (_flag . bv)) 1)) ;; big1
              (write-long (elt (_flag . bv) 0) s)
              (write-long (if (>= _flag 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _flag s)(write-long (if (>= _flag 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _flag
#+(or :alpha :irix6 :x86_64)
      (setf _flag (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _flag (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get mega_rover_project_pkg::mine :md5sum-) "87ee459c4b4bcda4c5ae0619ce324ea2")
(setf (get mega_rover_project_pkg::mine :datatype-) "mega_rover_project_pkg/mine")
(setf (get mega_rover_project_pkg::mine :definition-)
      "int64 flag

")



(provide :mega_rover_project_pkg/mine "87ee459c4b4bcda4c5ae0619ce324ea2")


