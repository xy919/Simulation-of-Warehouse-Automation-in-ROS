;; Auto-generated. Do not edit!


(when (boundp 'flexbe_msgs::StateInstantiation)
  (if (not (find-package "FLEXBE_MSGS"))
    (make-package "FLEXBE_MSGS"))
  (shadow 'StateInstantiation (find-package "FLEXBE_MSGS")))
(unless (find-package "FLEXBE_MSGS::STATEINSTANTIATION")
  (make-package "FLEXBE_MSGS::STATEINSTANTIATION"))

(in-package "ROS")
;;//! \htmlinclude StateInstantiation.msg.html


(intern "*CLASS_STATEMACHINE*" (find-package "FLEXBE_MSGS::STATEINSTANTIATION"))
(shadow '*CLASS_STATEMACHINE* (find-package "FLEXBE_MSGS::STATEINSTANTIATION"))
(defconstant flexbe_msgs::StateInstantiation::*CLASS_STATEMACHINE* ":STATEMACHINE")
(intern "*CLASS_CONCURRENCY*" (find-package "FLEXBE_MSGS::STATEINSTANTIATION"))
(shadow '*CLASS_CONCURRENCY* (find-package "FLEXBE_MSGS::STATEINSTANTIATION"))
(defconstant flexbe_msgs::StateInstantiation::*CLASS_CONCURRENCY* ":CONCURRENCY")
(intern "*CLASS_PRIORITY*" (find-package "FLEXBE_MSGS::STATEINSTANTIATION"))
(shadow '*CLASS_PRIORITY* (find-package "FLEXBE_MSGS::STATEINSTANTIATION"))
(defconstant flexbe_msgs::StateInstantiation::*CLASS_PRIORITY* ":PRIORITY")
(intern "*CLASS_BEHAVIOR*" (find-package "FLEXBE_MSGS::STATEINSTANTIATION"))
(shadow '*CLASS_BEHAVIOR* (find-package "FLEXBE_MSGS::STATEINSTANTIATION"))
(defconstant flexbe_msgs::StateInstantiation::*CLASS_BEHAVIOR* ":BEHAVIOR")
(defclass flexbe_msgs::StateInstantiation
  :super ros::object
  :slots (_state_path _state_class _initial_state_name _input_keys _output_keys _cond_outcome _cond_transition _behavior_class _parameter_names _parameter_values _position _outcomes _transitions _autonomy _userdata_keys _userdata_remapping ))

(defmethod flexbe_msgs::StateInstantiation
  (:init
   (&key
    ((:state_path __state_path) "")
    ((:state_class __state_class) "")
    ((:initial_state_name __initial_state_name) "")
    ((:input_keys __input_keys) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:output_keys __output_keys) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:cond_outcome __cond_outcome) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:cond_transition __cond_transition) (let (r) (dotimes (i 0) (push (instance flexbe_msgs::OutcomeCondition :init) r)) r))
    ((:behavior_class __behavior_class) "")
    ((:parameter_names __parameter_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:parameter_values __parameter_values) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:position __position) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:outcomes __outcomes) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:transitions __transitions) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:autonomy __autonomy) (make-array 0 :initial-element 0 :element-type :integer))
    ((:userdata_keys __userdata_keys) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:userdata_remapping __userdata_remapping) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _state_path (string __state_path))
   (setq _state_class (string __state_class))
   (setq _initial_state_name (string __initial_state_name))
   (setq _input_keys __input_keys)
   (setq _output_keys __output_keys)
   (setq _cond_outcome __cond_outcome)
   (setq _cond_transition __cond_transition)
   (setq _behavior_class (string __behavior_class))
   (setq _parameter_names __parameter_names)
   (setq _parameter_values __parameter_values)
   (setq _position __position)
   (setq _outcomes __outcomes)
   (setq _transitions __transitions)
   (setq _autonomy __autonomy)
   (setq _userdata_keys __userdata_keys)
   (setq _userdata_remapping __userdata_remapping)
   self)
  (:state_path
   (&optional __state_path)
   (if __state_path (setq _state_path __state_path)) _state_path)
  (:state_class
   (&optional __state_class)
   (if __state_class (setq _state_class __state_class)) _state_class)
  (:initial_state_name
   (&optional __initial_state_name)
   (if __initial_state_name (setq _initial_state_name __initial_state_name)) _initial_state_name)
  (:input_keys
   (&optional __input_keys)
   (if __input_keys (setq _input_keys __input_keys)) _input_keys)
  (:output_keys
   (&optional __output_keys)
   (if __output_keys (setq _output_keys __output_keys)) _output_keys)
  (:cond_outcome
   (&optional __cond_outcome)
   (if __cond_outcome (setq _cond_outcome __cond_outcome)) _cond_outcome)
  (:cond_transition
   (&rest __cond_transition)
   (if (keywordp (car __cond_transition))
       (send* _cond_transition __cond_transition)
     (progn
       (if __cond_transition (setq _cond_transition (car __cond_transition)))
       _cond_transition)))
  (:behavior_class
   (&optional __behavior_class)
   (if __behavior_class (setq _behavior_class __behavior_class)) _behavior_class)
  (:parameter_names
   (&optional __parameter_names)
   (if __parameter_names (setq _parameter_names __parameter_names)) _parameter_names)
  (:parameter_values
   (&optional __parameter_values)
   (if __parameter_values (setq _parameter_values __parameter_values)) _parameter_values)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:outcomes
   (&optional __outcomes)
   (if __outcomes (setq _outcomes __outcomes)) _outcomes)
  (:transitions
   (&optional __transitions)
   (if __transitions (setq _transitions __transitions)) _transitions)
  (:autonomy
   (&optional __autonomy)
   (if __autonomy (setq _autonomy __autonomy)) _autonomy)
  (:userdata_keys
   (&optional __userdata_keys)
   (if __userdata_keys (setq _userdata_keys __userdata_keys)) _userdata_keys)
  (:userdata_remapping
   (&optional __userdata_remapping)
   (if __userdata_remapping (setq _userdata_remapping __userdata_remapping)) _userdata_remapping)
  (:serialization-length
   ()
   (+
    ;; string _state_path
    4 (length _state_path)
    ;; string _state_class
    4 (length _state_class)
    ;; string _initial_state_name
    4 (length _initial_state_name)
    ;; string[] _input_keys
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _input_keys)) 4
    ;; string[] _output_keys
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _output_keys)) 4
    ;; string[] _cond_outcome
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _cond_outcome)) 4
    ;; flexbe_msgs/OutcomeCondition[] _cond_transition
    (apply #'+ (send-all _cond_transition :serialization-length)) 4
    ;; string _behavior_class
    4 (length _behavior_class)
    ;; string[] _parameter_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _parameter_names)) 4
    ;; string[] _parameter_values
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _parameter_values)) 4
    ;; float32[2] _position
    (* 4    2)
    ;; string[] _outcomes
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _outcomes)) 4
    ;; string[] _transitions
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _transitions)) 4
    ;; int8[] _autonomy
    (* 1    (length _autonomy)) 4
    ;; string[] _userdata_keys
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _userdata_keys)) 4
    ;; string[] _userdata_remapping
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _userdata_remapping)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state_path
       (write-long (length _state_path) s) (princ _state_path s)
     ;; string _state_class
       (write-long (length _state_class) s) (princ _state_class s)
     ;; string _initial_state_name
       (write-long (length _initial_state_name) s) (princ _initial_state_name s)
     ;; string[] _input_keys
     (write-long (length _input_keys) s)
     (dolist (elem _input_keys)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _output_keys
     (write-long (length _output_keys) s)
     (dolist (elem _output_keys)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _cond_outcome
     (write-long (length _cond_outcome) s)
     (dolist (elem _cond_outcome)
       (write-long (length elem) s) (princ elem s)
       )
     ;; flexbe_msgs/OutcomeCondition[] _cond_transition
     (write-long (length _cond_transition) s)
     (dolist (elem _cond_transition)
       (send elem :serialize s)
       )
     ;; string _behavior_class
       (write-long (length _behavior_class) s) (princ _behavior_class s)
     ;; string[] _parameter_names
     (write-long (length _parameter_names) s)
     (dolist (elem _parameter_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _parameter_values
     (write-long (length _parameter_values) s)
     (dolist (elem _parameter_values)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[2] _position
     (dotimes (i 2)
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string[] _outcomes
     (write-long (length _outcomes) s)
     (dolist (elem _outcomes)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _transitions
     (write-long (length _transitions) s)
     (dolist (elem _transitions)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int8[] _autonomy
     (write-long (length _autonomy) s)
     (dotimes (i (length _autonomy))
       (write-byte (elt _autonomy i) s)
       )
     ;; string[] _userdata_keys
     (write-long (length _userdata_keys) s)
     (dolist (elem _userdata_keys)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _userdata_remapping
     (write-long (length _userdata_remapping) s)
     (dolist (elem _userdata_remapping)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _state_class
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state_class (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _initial_state_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _initial_state_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _input_keys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _input_keys (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _input_keys i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _output_keys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _output_keys (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _output_keys i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _cond_outcome
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cond_outcome (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _cond_outcome i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; flexbe_msgs/OutcomeCondition[] _cond_transition
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cond_transition (let (r) (dotimes (i n) (push (instance flexbe_msgs::OutcomeCondition :init) r)) r))
     (dolist (elem- _cond_transition)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _behavior_class
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _behavior_class (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _parameter_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parameter_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _parameter_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _parameter_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parameter_values (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _parameter_values i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[2] _position
   (dotimes (i (length _position))
     (setf (elt _position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; string[] _outcomes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _outcomes (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _outcomes i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _transitions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _transitions (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _transitions i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int8[] _autonomy
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _autonomy (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _autonomy i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _autonomy i) 127) (setf (elt _autonomy i) (- (elt _autonomy i) 256)))
     ))
   ;; string[] _userdata_keys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _userdata_keys (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _userdata_keys i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _userdata_remapping
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _userdata_remapping (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _userdata_remapping i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get flexbe_msgs::StateInstantiation :md5sum-) "1c6026e288cfff7ab6c8308ee1db66f1")
(setf (get flexbe_msgs::StateInstantiation :datatype-) "flexbe_msgs/StateInstantiation")
(setf (get flexbe_msgs::StateInstantiation :definition-)
      "# Describes a single instantiation of a state

# Path of this state inside the behavior
# Last segment of the path is the name of this state
# e.g. \"/Inner_Statemachine/This_State\"
string state_path

# Specifies the class implementing this state
# Use one of the provided CLASS constants if this is not a primitive state
# e.g. \"CalculationState\"
string CLASS_STATEMACHINE 	= :STATEMACHINE
string CLASS_CONCURRENCY 	= :CONCURRENCY
string CLASS_PRIORITY 		= :PRIORITY
string CLASS_BEHAVIOR 		= :BEHAVIOR
string state_class



# Only relevant for state machine, priority, and concurrency
# Name of the initial state / state to be monitored
string initial_state_name
# Input and output keys (can be remapped below)
string[] input_keys
string[] output_keys

# Only relevant for concurrency
# Outcome conditions
string[] cond_outcome
OutcomeCondition[] cond_transition

# Only relevant for behavior
# Name of the class implementing this state
string behavior_class

# Only relevant for primitive state
# List of parameter names and values of this state
# Order of names and values has to match
string[] parameter_names
string[] parameter_values



# Position of this state in the editor [x,y]
float32[2] position

# Outcomes of this state
# Defines the order of the lists: transitions, autonomy
string[] outcomes
# Transition targets (state names or container outcomes) of the outcomes
string[] transitions
# Required autonomy level of the outcomes
int8[] autonomy

# Userdata of this state
# Merges own input_keys and output_keys, no duplicates
string[] userdata_keys
# Remapping of the corresponding own key (= key used by container)
string[] userdata_remapping
================================================================================
MSG: flexbe_msgs/OutcomeCondition
# Defines a conjunction of required state outcomes in order to return a concurrency outcome
string[] state_name
string[] state_outcome
")



(provide :flexbe_msgs/StateInstantiation "1c6026e288cfff7ab6c8308ee1db66f1")


