;; Auto-generated. Do not edit!


(when (boundp 'flexbe_msgs::BehaviorRequest)
  (if (not (find-package "FLEXBE_MSGS"))
    (make-package "FLEXBE_MSGS"))
  (shadow 'BehaviorRequest (find-package "FLEXBE_MSGS")))
(unless (find-package "FLEXBE_MSGS::BEHAVIORREQUEST")
  (make-package "FLEXBE_MSGS::BEHAVIORREQUEST"))

(in-package "ROS")
;;//! \htmlinclude BehaviorRequest.msg.html


(defclass flexbe_msgs::BehaviorRequest
  :super ros::object
  :slots (_behavior_name _autonomy_level _arg_keys _arg_values _structure ))

(defmethod flexbe_msgs::BehaviorRequest
  (:init
   (&key
    ((:behavior_name __behavior_name) "")
    ((:autonomy_level __autonomy_level) 0)
    ((:arg_keys __arg_keys) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:arg_values __arg_values) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:structure __structure) (let (r) (dotimes (i 0) (push (instance flexbe_msgs::Container :init) r)) r))
    )
   (send-super :init)
   (setq _behavior_name (string __behavior_name))
   (setq _autonomy_level (round __autonomy_level))
   (setq _arg_keys __arg_keys)
   (setq _arg_values __arg_values)
   (setq _structure __structure)
   self)
  (:behavior_name
   (&optional __behavior_name)
   (if __behavior_name (setq _behavior_name __behavior_name)) _behavior_name)
  (:autonomy_level
   (&optional __autonomy_level)
   (if __autonomy_level (setq _autonomy_level __autonomy_level)) _autonomy_level)
  (:arg_keys
   (&optional __arg_keys)
   (if __arg_keys (setq _arg_keys __arg_keys)) _arg_keys)
  (:arg_values
   (&optional __arg_values)
   (if __arg_values (setq _arg_values __arg_values)) _arg_values)
  (:structure
   (&rest __structure)
   (if (keywordp (car __structure))
       (send* _structure __structure)
     (progn
       (if __structure (setq _structure (car __structure)))
       _structure)))
  (:serialization-length
   ()
   (+
    ;; string _behavior_name
    4 (length _behavior_name)
    ;; uint8 _autonomy_level
    1
    ;; string[] _arg_keys
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _arg_keys)) 4
    ;; string[] _arg_values
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _arg_values)) 4
    ;; flexbe_msgs/Container[] _structure
    (apply #'+ (send-all _structure :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _behavior_name
       (write-long (length _behavior_name) s) (princ _behavior_name s)
     ;; uint8 _autonomy_level
       (write-byte _autonomy_level s)
     ;; string[] _arg_keys
     (write-long (length _arg_keys) s)
     (dolist (elem _arg_keys)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _arg_values
     (write-long (length _arg_values) s)
     (dolist (elem _arg_values)
       (write-long (length elem) s) (princ elem s)
       )
     ;; flexbe_msgs/Container[] _structure
     (write-long (length _structure) s)
     (dolist (elem _structure)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _behavior_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _behavior_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _autonomy_level
     (setq _autonomy_level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string[] _arg_keys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _arg_keys (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _arg_keys i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _arg_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _arg_values (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _arg_values i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; flexbe_msgs/Container[] _structure
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _structure (let (r) (dotimes (i n) (push (instance flexbe_msgs::Container :init) r)) r))
     (dolist (elem- _structure)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get flexbe_msgs::BehaviorRequest :md5sum-) "0b55949502d4c602376ee00a64d0d294")
(setf (get flexbe_msgs::BehaviorRequest :datatype-) "flexbe_msgs/BehaviorRequest")
(setf (get flexbe_msgs::BehaviorRequest :definition-)
      "string behavior_name

uint8 autonomy_level
string[] arg_keys
string[] arg_values

Container[] structure
================================================================================
MSG: flexbe_msgs/Container
string path
string[] children
string[] outcomes
string[] transitions
byte[] autonomy
")



(provide :flexbe_msgs/BehaviorRequest "0b55949502d4c602376ee00a64d0d294")


