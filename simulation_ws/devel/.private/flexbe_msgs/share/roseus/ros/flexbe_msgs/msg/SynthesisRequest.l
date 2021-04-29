;; Auto-generated. Do not edit!


(when (boundp 'flexbe_msgs::SynthesisRequest)
  (if (not (find-package "FLEXBE_MSGS"))
    (make-package "FLEXBE_MSGS"))
  (shadow 'SynthesisRequest (find-package "FLEXBE_MSGS")))
(unless (find-package "FLEXBE_MSGS::SYNTHESISREQUEST")
  (make-package "FLEXBE_MSGS::SYNTHESISREQUEST"))

(in-package "ROS")
;;//! \htmlinclude SynthesisRequest.msg.html


(defclass flexbe_msgs::SynthesisRequest
  :super ros::object
  :slots (_name _system _goal _initial_condition _sm_outcomes ))

(defmethod flexbe_msgs::SynthesisRequest
  (:init
   (&key
    ((:name __name) "")
    ((:system __system) "")
    ((:goal __goal) "")
    ((:initial_condition __initial_condition) "")
    ((:sm_outcomes __sm_outcomes) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _system (string __system))
   (setq _goal (string __goal))
   (setq _initial_condition (string __initial_condition))
   (setq _sm_outcomes __sm_outcomes)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:system
   (&optional __system)
   (if __system (setq _system __system)) _system)
  (:goal
   (&optional __goal)
   (if __goal (setq _goal __goal)) _goal)
  (:initial_condition
   (&optional __initial_condition)
   (if __initial_condition (setq _initial_condition __initial_condition)) _initial_condition)
  (:sm_outcomes
   (&optional __sm_outcomes)
   (if __sm_outcomes (setq _sm_outcomes __sm_outcomes)) _sm_outcomes)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _system
    4 (length _system)
    ;; string _goal
    4 (length _goal)
    ;; string _initial_condition
    4 (length _initial_condition)
    ;; string[] _sm_outcomes
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _sm_outcomes)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _system
       (write-long (length _system) s) (princ _system s)
     ;; string _goal
       (write-long (length _goal) s) (princ _goal s)
     ;; string _initial_condition
       (write-long (length _initial_condition) s) (princ _initial_condition s)
     ;; string[] _sm_outcomes
     (write-long (length _sm_outcomes) s)
     (dolist (elem _sm_outcomes)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _system
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _system (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _goal
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _goal (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _initial_condition
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _initial_condition (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _sm_outcomes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sm_outcomes (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _sm_outcomes i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get flexbe_msgs::SynthesisRequest :md5sum-) "99257dbfe8a196d006a75837dcabf3f6")
(setf (get flexbe_msgs::SynthesisRequest :datatype-) "flexbe_msgs/SynthesisRequest")
(setf (get flexbe_msgs::SynthesisRequest :definition-)
      "# Minimal template for the request data provided by the FlexBE synthesis interface.
# Either refer this message as 'request' in the goal part of your synthesis action
# or implement your own by at least supporting the fields listed below.

# Identifier of this synthesis query, can for example be used to set the name of the resulting state machine
string name

# Identifier of the system (i.e., configuration data set) to be used by the synthesis tool
string system

# Goal to be achieved by the synthesized behavior
string goal

# Initial conditions from which the synthesized behavior will start
string initial_condition

# Available outcomes of the generated state machine,
# i.e., possible results of the synthesized behavior
string[] sm_outcomes
")



(provide :flexbe_msgs/SynthesisRequest "99257dbfe8a196d006a75837dcabf3f6")


