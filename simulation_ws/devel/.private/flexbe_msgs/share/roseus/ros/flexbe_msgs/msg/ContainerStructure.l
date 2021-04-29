;; Auto-generated. Do not edit!


(when (boundp 'flexbe_msgs::ContainerStructure)
  (if (not (find-package "FLEXBE_MSGS"))
    (make-package "FLEXBE_MSGS"))
  (shadow 'ContainerStructure (find-package "FLEXBE_MSGS")))
(unless (find-package "FLEXBE_MSGS::CONTAINERSTRUCTURE")
  (make-package "FLEXBE_MSGS::CONTAINERSTRUCTURE"))

(in-package "ROS")
;;//! \htmlinclude ContainerStructure.msg.html


(defclass flexbe_msgs::ContainerStructure
  :super ros::object
  :slots (_behavior_id _containers ))

(defmethod flexbe_msgs::ContainerStructure
  (:init
   (&key
    ((:behavior_id __behavior_id) 0)
    ((:containers __containers) (let (r) (dotimes (i 0) (push (instance flexbe_msgs::Container :init) r)) r))
    )
   (send-super :init)
   (setq _behavior_id (round __behavior_id))
   (setq _containers __containers)
   self)
  (:behavior_id
   (&optional __behavior_id)
   (if __behavior_id (setq _behavior_id __behavior_id)) _behavior_id)
  (:containers
   (&rest __containers)
   (if (keywordp (car __containers))
       (send* _containers __containers)
     (progn
       (if __containers (setq _containers (car __containers)))
       _containers)))
  (:serialization-length
   ()
   (+
    ;; int32 _behavior_id
    4
    ;; flexbe_msgs/Container[] _containers
    (apply #'+ (send-all _containers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _behavior_id
       (write-long _behavior_id s)
     ;; flexbe_msgs/Container[] _containers
     (write-long (length _containers) s)
     (dolist (elem _containers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _behavior_id
     (setq _behavior_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; flexbe_msgs/Container[] _containers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _containers (let (r) (dotimes (i n) (push (instance flexbe_msgs::Container :init) r)) r))
     (dolist (elem- _containers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get flexbe_msgs::ContainerStructure :md5sum-) "9cd26d15621063b90279d87117694328")
(setf (get flexbe_msgs::ContainerStructure :datatype-) "flexbe_msgs/ContainerStructure")
(setf (get flexbe_msgs::ContainerStructure :definition-)
      "int32 behavior_id
Container[] containers
================================================================================
MSG: flexbe_msgs/Container
string path
string[] children
string[] outcomes
string[] transitions
byte[] autonomy
")



(provide :flexbe_msgs/ContainerStructure "9cd26d15621063b90279d87117694328")


