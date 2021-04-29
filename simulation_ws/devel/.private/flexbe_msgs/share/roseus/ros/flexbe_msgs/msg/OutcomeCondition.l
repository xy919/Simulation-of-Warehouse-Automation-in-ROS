;; Auto-generated. Do not edit!


(when (boundp 'flexbe_msgs::OutcomeCondition)
  (if (not (find-package "FLEXBE_MSGS"))
    (make-package "FLEXBE_MSGS"))
  (shadow 'OutcomeCondition (find-package "FLEXBE_MSGS")))
(unless (find-package "FLEXBE_MSGS::OUTCOMECONDITION")
  (make-package "FLEXBE_MSGS::OUTCOMECONDITION"))

(in-package "ROS")
;;//! \htmlinclude OutcomeCondition.msg.html


(defclass flexbe_msgs::OutcomeCondition
  :super ros::object
  :slots (_state_name _state_outcome ))

(defmethod flexbe_msgs::OutcomeCondition
  (:init
   (&key
    ((:state_name __state_name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:state_outcome __state_outcome) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _state_name __state_name)
   (setq _state_outcome __state_outcome)
   self)
  (:state_name
   (&optional __state_name)
   (if __state_name (setq _state_name __state_name)) _state_name)
  (:state_outcome
   (&optional __state_outcome)
   (if __state_outcome (setq _state_outcome __state_outcome)) _state_outcome)
  (:serialization-length
   ()
   (+
    ;; string[] _state_name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _state_name)) 4
    ;; string[] _state_outcome
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _state_outcome)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _state_name
     (write-long (length _state_name) s)
     (dolist (elem _state_name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _state_outcome
     (write-long (length _state_outcome) s)
     (dolist (elem _state_outcome)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _state_name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _state_name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _state_name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _state_outcome
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _state_outcome (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _state_outcome i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get flexbe_msgs::OutcomeCondition :md5sum-) "3f00d7f2d34167712ca29ef288547863")
(setf (get flexbe_msgs::OutcomeCondition :datatype-) "flexbe_msgs/OutcomeCondition")
(setf (get flexbe_msgs::OutcomeCondition :definition-)
      "# Defines a conjunction of required state outcomes in order to return a concurrency outcome
string[] state_name
string[] state_outcome
")



(provide :flexbe_msgs/OutcomeCondition "3f00d7f2d34167712ca29ef288547863")


