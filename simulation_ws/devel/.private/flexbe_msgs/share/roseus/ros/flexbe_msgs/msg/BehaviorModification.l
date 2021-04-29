;; Auto-generated. Do not edit!


(when (boundp 'flexbe_msgs::BehaviorModification)
  (if (not (find-package "FLEXBE_MSGS"))
    (make-package "FLEXBE_MSGS"))
  (shadow 'BehaviorModification (find-package "FLEXBE_MSGS")))
(unless (find-package "FLEXBE_MSGS::BEHAVIORMODIFICATION")
  (make-package "FLEXBE_MSGS::BEHAVIORMODIFICATION"))

(in-package "ROS")
;;//! \htmlinclude BehaviorModification.msg.html


(defclass flexbe_msgs::BehaviorModification
  :super ros::object
  :slots (_index_begin _index_end _new_content ))

(defmethod flexbe_msgs::BehaviorModification
  (:init
   (&key
    ((:index_begin __index_begin) 0)
    ((:index_end __index_end) 0)
    ((:new_content __new_content) "")
    )
   (send-super :init)
   (setq _index_begin (round __index_begin))
   (setq _index_end (round __index_end))
   (setq _new_content (string __new_content))
   self)
  (:index_begin
   (&optional __index_begin)
   (if __index_begin (setq _index_begin __index_begin)) _index_begin)
  (:index_end
   (&optional __index_end)
   (if __index_end (setq _index_end __index_end)) _index_end)
  (:new_content
   (&optional __new_content)
   (if __new_content (setq _new_content __new_content)) _new_content)
  (:serialization-length
   ()
   (+
    ;; int32 _index_begin
    4
    ;; int32 _index_end
    4
    ;; string _new_content
    4 (length _new_content)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _index_begin
       (write-long _index_begin s)
     ;; int32 _index_end
       (write-long _index_end s)
     ;; string _new_content
       (write-long (length _new_content) s) (princ _new_content s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _index_begin
     (setq _index_begin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _index_end
     (setq _index_end (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _new_content
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _new_content (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get flexbe_msgs::BehaviorModification :md5sum-) "ac997193d826b145a432b8e3e528f6b4")
(setf (get flexbe_msgs::BehaviorModification :datatype-) "flexbe_msgs/BehaviorModification")
(setf (get flexbe_msgs::BehaviorModification :definition-)
      "int32 index_begin
int32 index_end
string new_content
")



(provide :flexbe_msgs/BehaviorModification "ac997193d826b145a432b8e3e528f6b4")


