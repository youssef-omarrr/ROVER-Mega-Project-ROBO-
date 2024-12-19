;; Auto-generated. Do not edit!


(when (boundp 'mega_rover_project_pkg::localization_stack)
  (if (not (find-package "MEGA_ROVER_PROJECT_PKG"))
    (make-package "MEGA_ROVER_PROJECT_PKG"))
  (shadow 'localization_stack (find-package "MEGA_ROVER_PROJECT_PKG")))
(unless (find-package "MEGA_ROVER_PROJECT_PKG::LOCALIZATION_STACK")
  (make-package "MEGA_ROVER_PROJECT_PKG::LOCALIZATION_STACK"))

(in-package "ROS")
;;//! \htmlinclude localization_stack.msg.html


(defclass mega_rover_project_pkg::localization_stack
  :super ros::object
  :slots (_num _weight _x _y ))

(defmethod mega_rover_project_pkg::localization_stack
  (:init
   (&key
    ((:num __num) 0)
    ((:weight __weight) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _num (round __num))
   (setq _weight (round __weight))
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int64 _num
    8
    ;; int64 _weight
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num) (= (length (_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num . bv) 0) 0) s)
              (write-long (ash (elt (_num . bv) 1) -1) s))
             ((and (class _num) (= (length (_num . bv)) 1)) ;; big1
              (write-long (elt (_num . bv) 0) s)
              (write-long (if (>= _num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num s)(write-long (if (>= _num 0) 0 #xffffffff) s)))
     ;; int64 _weight
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _weight (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _weight) (= (length (_weight . bv)) 2)) ;; bignum
              (write-long (ash (elt (_weight . bv) 0) 0) s)
              (write-long (ash (elt (_weight . bv) 1) -1) s))
             ((and (class _weight) (= (length (_weight . bv)) 1)) ;; big1
              (write-long (elt (_weight . bv) 0) s)
              (write-long (if (>= _weight 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _weight s)(write-long (if (>= _weight 0) 0 #xffffffff) s)))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _num
#+(or :alpha :irix6 :x86_64)
      (setf _num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _weight
#+(or :alpha :irix6 :x86_64)
      (setf _weight (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _weight (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mega_rover_project_pkg::localization_stack :md5sum-) "cf770bec3959fa3ea8bb506b0d23db4e")
(setf (get mega_rover_project_pkg::localization_stack :datatype-) "mega_rover_project_pkg/localization_stack")
(setf (get mega_rover_project_pkg::localization_stack :definition-)
      "int64 num
int64 weight
float64 x
float64 y
")



(provide :mega_rover_project_pkg/localization_stack "cf770bec3959fa3ea8bb506b0d23db4e")


