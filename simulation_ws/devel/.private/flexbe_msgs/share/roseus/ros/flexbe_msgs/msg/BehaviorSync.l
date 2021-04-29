;; Auto-generated. Do not edit!


(when (boundp 'flexbe_msgs::BehaviorSync)
  (if (not (find-package "FLEXBE_MSGS"))
    (make-package "FLEXBE_MSGS"))
  (shadow 'BehaviorSync (find-package "FLEXBE_MSGS")))
(unless (find-package "FLEXBE_MSGS::BEHAVIORSYNC")
  (make-package "FLEXBE_MSGS::BEHAVIORSYNC"))

(in-package "ROS")
;;//! \htmlinclude BehaviorSync.msg.html


(defclass flexbe_msgs::BehaviorSync
  :super ros::object
  :slots (_behavior_id _current_state_checksum ))

(defmethod flexbe_msgs::BehaviorSync
  (:init
   (&key
    ((:behavior_id __behavior_id) 0)
    ((:current_state_checksum __current_state_checksum) 0)
    )
   (send-super :init)
   (setq _behavior_id (round __behavior_id))
   (setq _current_state_checksum (round __current_state_checksum))
   self)
  (:behavior_id
   (&optional __behavior_id)
   (if __behavior_id (setq _behavior_id __behavior_id)) _behavior_id)
  (:current_state_checksum
   (&optional __current_state_checksum)
   (if __current_state_checksum (setq _current_state_checksum __current_state_checksum)) _current_state_checksum)
  (:serialization-length
   ()
   (+
    ;; int32 _behavior_id
    4
    ;; int32 _current_state_checksum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _behavior_id
       (write-long _behavior_id s)
     ;; int32 _current_state_checksum
       (write-long _current_state_checksum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _behavior_id
     (setq _behavior_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _current_state_checksum
     (setq _current_state_checksum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get flexbe_msgs::BehaviorSync :md5sum-) "118d64f48696509906c4cf4a228608b1")
(setf (get flexbe_msgs::BehaviorSync :datatype-) "flexbe_msgs/BehaviorSync")
(setf (get flexbe_msgs::BehaviorSync :definition-)
      "int32 behavior_id

int32 current_state_checksum
")



(provide :flexbe_msgs/BehaviorSync "118d64f48696509906c4cf4a228608b1")


