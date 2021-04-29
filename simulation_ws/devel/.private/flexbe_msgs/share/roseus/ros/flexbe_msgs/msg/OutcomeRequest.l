;; Auto-generated. Do not edit!


(when (boundp 'flexbe_msgs::OutcomeRequest)
  (if (not (find-package "FLEXBE_MSGS"))
    (make-package "FLEXBE_MSGS"))
  (shadow 'OutcomeRequest (find-package "FLEXBE_MSGS")))
(unless (find-package "FLEXBE_MSGS::OUTCOMEREQUEST")
  (make-package "FLEXBE_MSGS::OUTCOMEREQUEST"))

(in-package "ROS")
;;//! \htmlinclude OutcomeRequest.msg.html


(defclass flexbe_msgs::OutcomeRequest
  :super ros::object
  :slots (_outcome _target ))

(defmethod flexbe_msgs::OutcomeRequest
  (:init
   (&key
    ((:outcome __outcome) 0)
    ((:target __target) "")
    )
   (send-super :init)
   (setq _outcome (round __outcome))
   (setq _target (string __target))
   self)
  (:outcome
   (&optional __outcome)
   (if __outcome (setq _outcome __outcome)) _outcome)
  (:target
   (&optional __target)
   (if __target (setq _target __target)) _target)
  (:serialization-length
   ()
   (+
    ;; uint8 _outcome
    1
    ;; string _target
    4 (length _target)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _outcome
       (write-byte _outcome s)
     ;; string _target
       (write-long (length _target) s) (princ _target s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _outcome
     (setq _outcome (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _target
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get flexbe_msgs::OutcomeRequest :md5sum-) "b057cf075cb943bf0dbb3443419a61ed")
(setf (get flexbe_msgs::OutcomeRequest :datatype-) "flexbe_msgs/OutcomeRequest")
(setf (get flexbe_msgs::OutcomeRequest :definition-)
      "uint8 outcome
string target
")



(provide :flexbe_msgs/OutcomeRequest "b057cf075cb943bf0dbb3443419a61ed")


