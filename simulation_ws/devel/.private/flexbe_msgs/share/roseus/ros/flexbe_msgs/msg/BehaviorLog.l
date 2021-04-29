;; Auto-generated. Do not edit!


(when (boundp 'flexbe_msgs::BehaviorLog)
  (if (not (find-package "FLEXBE_MSGS"))
    (make-package "FLEXBE_MSGS"))
  (shadow 'BehaviorLog (find-package "FLEXBE_MSGS")))
(unless (find-package "FLEXBE_MSGS::BEHAVIORLOG")
  (make-package "FLEXBE_MSGS::BEHAVIORLOG"))

(in-package "ROS")
;;//! \htmlinclude BehaviorLog.msg.html


(intern "*INFO*" (find-package "FLEXBE_MSGS::BEHAVIORLOG"))
(shadow '*INFO* (find-package "FLEXBE_MSGS::BEHAVIORLOG"))
(defconstant flexbe_msgs::BehaviorLog::*INFO* 0)
(intern "*WARN*" (find-package "FLEXBE_MSGS::BEHAVIORLOG"))
(shadow '*WARN* (find-package "FLEXBE_MSGS::BEHAVIORLOG"))
(defconstant flexbe_msgs::BehaviorLog::*WARN* 1)
(intern "*HINT*" (find-package "FLEXBE_MSGS::BEHAVIORLOG"))
(shadow '*HINT* (find-package "FLEXBE_MSGS::BEHAVIORLOG"))
(defconstant flexbe_msgs::BehaviorLog::*HINT* 2)
(intern "*ERROR*" (find-package "FLEXBE_MSGS::BEHAVIORLOG"))
(shadow '*ERROR* (find-package "FLEXBE_MSGS::BEHAVIORLOG"))
(defconstant flexbe_msgs::BehaviorLog::*ERROR* 3)
(intern "*DEBUG*" (find-package "FLEXBE_MSGS::BEHAVIORLOG"))
(shadow '*DEBUG* (find-package "FLEXBE_MSGS::BEHAVIORLOG"))
(defconstant flexbe_msgs::BehaviorLog::*DEBUG* 10)
(defclass flexbe_msgs::BehaviorLog
  :super ros::object
  :slots (_text _status_code ))

(defmethod flexbe_msgs::BehaviorLog
  (:init
   (&key
    ((:text __text) "")
    ((:status_code __status_code) 0)
    )
   (send-super :init)
   (setq _text (string __text))
   (setq _status_code (round __status_code))
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:status_code
   (&optional __status_code)
   (if __status_code (setq _status_code __status_code)) _status_code)
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ;; uint8 _status_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; uint8 _status_code
       (write-byte _status_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _status_code
     (setq _status_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get flexbe_msgs::BehaviorLog :md5sum-) "03d7689372c7e2617b8d61fbf552e694")
(setf (get flexbe_msgs::BehaviorLog :datatype-) "flexbe_msgs/BehaviorLog")
(setf (get flexbe_msgs::BehaviorLog :definition-)
      "string text

uint8 INFO 		= 0
uint8 WARN  	= 1
uint8 HINT  	= 2
uint8 ERROR 	= 3
uint8 DEBUG 	= 10

uint8 status_code
")



(provide :flexbe_msgs/BehaviorLog "03d7689372c7e2617b8d61fbf552e694")


