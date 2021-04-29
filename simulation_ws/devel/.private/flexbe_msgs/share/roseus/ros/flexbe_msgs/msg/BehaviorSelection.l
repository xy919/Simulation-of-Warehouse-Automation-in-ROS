;; Auto-generated. Do not edit!


(when (boundp 'flexbe_msgs::BehaviorSelection)
  (if (not (find-package "FLEXBE_MSGS"))
    (make-package "FLEXBE_MSGS"))
  (shadow 'BehaviorSelection (find-package "FLEXBE_MSGS")))
(unless (find-package "FLEXBE_MSGS::BEHAVIORSELECTION")
  (make-package "FLEXBE_MSGS::BEHAVIORSELECTION"))

(in-package "ROS")
;;//! \htmlinclude BehaviorSelection.msg.html


(defclass flexbe_msgs::BehaviorSelection
  :super ros::object
  :slots (_behavior_id _behavior_checksum _autonomy_level _arg_keys _arg_values _input_keys _input_values _modifications ))

(defmethod flexbe_msgs::BehaviorSelection
  (:init
   (&key
    ((:behavior_id __behavior_id) 0)
    ((:behavior_checksum __behavior_checksum) 0)
    ((:autonomy_level __autonomy_level) 0)
    ((:arg_keys __arg_keys) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:arg_values __arg_values) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:input_keys __input_keys) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:input_values __input_values) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:modifications __modifications) (let (r) (dotimes (i 0) (push (instance flexbe_msgs::BehaviorModification :init) r)) r))
    )
   (send-super :init)
   (setq _behavior_id (round __behavior_id))
   (setq _behavior_checksum (round __behavior_checksum))
   (setq _autonomy_level (round __autonomy_level))
   (setq _arg_keys __arg_keys)
   (setq _arg_values __arg_values)
   (setq _input_keys __input_keys)
   (setq _input_values __input_values)
   (setq _modifications __modifications)
   self)
  (:behavior_id
   (&optional __behavior_id)
   (if __behavior_id (setq _behavior_id __behavior_id)) _behavior_id)
  (:behavior_checksum
   (&optional __behavior_checksum)
   (if __behavior_checksum (setq _behavior_checksum __behavior_checksum)) _behavior_checksum)
  (:autonomy_level
   (&optional __autonomy_level)
   (if __autonomy_level (setq _autonomy_level __autonomy_level)) _autonomy_level)
  (:arg_keys
   (&optional __arg_keys)
   (if __arg_keys (setq _arg_keys __arg_keys)) _arg_keys)
  (:arg_values
   (&optional __arg_values)
   (if __arg_values (setq _arg_values __arg_values)) _arg_values)
  (:input_keys
   (&optional __input_keys)
   (if __input_keys (setq _input_keys __input_keys)) _input_keys)
  (:input_values
   (&optional __input_values)
   (if __input_values (setq _input_values __input_values)) _input_values)
  (:modifications
   (&rest __modifications)
   (if (keywordp (car __modifications))
       (send* _modifications __modifications)
     (progn
       (if __modifications (setq _modifications (car __modifications)))
       _modifications)))
  (:serialization-length
   ()
   (+
    ;; int32 _behavior_id
    4
    ;; int32 _behavior_checksum
    4
    ;; uint8 _autonomy_level
    1
    ;; string[] _arg_keys
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _arg_keys)) 4
    ;; string[] _arg_values
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _arg_values)) 4
    ;; string[] _input_keys
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _input_keys)) 4
    ;; string[] _input_values
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _input_values)) 4
    ;; flexbe_msgs/BehaviorModification[] _modifications
    (apply #'+ (send-all _modifications :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _behavior_id
       (write-long _behavior_id s)
     ;; int32 _behavior_checksum
       (write-long _behavior_checksum s)
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
     ;; string[] _input_keys
     (write-long (length _input_keys) s)
     (dolist (elem _input_keys)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _input_values
     (write-long (length _input_values) s)
     (dolist (elem _input_values)
       (write-long (length elem) s) (princ elem s)
       )
     ;; flexbe_msgs/BehaviorModification[] _modifications
     (write-long (length _modifications) s)
     (dolist (elem _modifications)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _behavior_id
     (setq _behavior_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _behavior_checksum
     (setq _behavior_checksum (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; string[] _input_keys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _input_keys (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _input_keys i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _input_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _input_values (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _input_values i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; flexbe_msgs/BehaviorModification[] _modifications
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _modifications (let (r) (dotimes (i n) (push (instance flexbe_msgs::BehaviorModification :init) r)) r))
     (dolist (elem- _modifications)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get flexbe_msgs::BehaviorSelection :md5sum-) "514f1b101295bdbd417ee6cc46e3823c")
(setf (get flexbe_msgs::BehaviorSelection :datatype-) "flexbe_msgs/BehaviorSelection")
(setf (get flexbe_msgs::BehaviorSelection :definition-)
      "int32 behavior_id
int32 behavior_checksum

uint8 autonomy_level
string[] arg_keys
string[] arg_values

string[] input_keys
string[] input_values

flexbe_msgs/BehaviorModification[] modifications
================================================================================
MSG: flexbe_msgs/BehaviorModification
int32 index_begin
int32 index_end
string new_content
")



(provide :flexbe_msgs/BehaviorSelection "514f1b101295bdbd417ee6cc46e3823c")


