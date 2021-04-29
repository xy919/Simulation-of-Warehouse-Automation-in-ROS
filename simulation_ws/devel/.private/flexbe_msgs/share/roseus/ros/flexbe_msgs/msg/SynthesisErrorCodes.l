;; Auto-generated. Do not edit!


(when (boundp 'flexbe_msgs::SynthesisErrorCodes)
  (if (not (find-package "FLEXBE_MSGS"))
    (make-package "FLEXBE_MSGS"))
  (shadow 'SynthesisErrorCodes (find-package "FLEXBE_MSGS")))
(unless (find-package "FLEXBE_MSGS::SYNTHESISERRORCODES")
  (make-package "FLEXBE_MSGS::SYNTHESISERRORCODES"))

(in-package "ROS")
;;//! \htmlinclude SynthesisErrorCodes.msg.html


(intern "*SUCCESS*" (find-package "FLEXBE_MSGS::SYNTHESISERRORCODES"))
(shadow '*SUCCESS* (find-package "FLEXBE_MSGS::SYNTHESISERRORCODES"))
(defconstant flexbe_msgs::SynthesisErrorCodes::*SUCCESS* 1)
(defclass flexbe_msgs::SynthesisErrorCodes
  :super ros::object
  :slots (_value ))

(defmethod flexbe_msgs::SynthesisErrorCodes
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get flexbe_msgs::SynthesisErrorCodes :md5sum-) "64e05da1f86a12ce44b1cca74395bd4e")
(setf (get flexbe_msgs::SynthesisErrorCodes :datatype-) "flexbe_msgs/SynthesisErrorCodes")
(setf (get flexbe_msgs::SynthesisErrorCodes :definition-)
      "int32 value

# success
int32 SUCCESS = 1

# all other values will be considered as any sort of error
")



(provide :flexbe_msgs/SynthesisErrorCodes "64e05da1f86a12ce44b1cca74395bd4e")


