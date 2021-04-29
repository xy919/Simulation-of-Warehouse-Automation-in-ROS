;; Auto-generated. Do not edit!


(when (boundp 'my_gazebo::ConveyorBeltControl)
  (if (not (find-package "MY_GAZEBO"))
    (make-package "MY_GAZEBO"))
  (shadow 'ConveyorBeltControl (find-package "MY_GAZEBO")))
(unless (find-package "MY_GAZEBO::CONVEYORBELTCONTROL")
  (make-package "MY_GAZEBO::CONVEYORBELTCONTROL"))
(unless (find-package "MY_GAZEBO::CONVEYORBELTCONTROLREQUEST")
  (make-package "MY_GAZEBO::CONVEYORBELTCONTROLREQUEST"))
(unless (find-package "MY_GAZEBO::CONVEYORBELTCONTROLRESPONSE")
  (make-package "MY_GAZEBO::CONVEYORBELTCONTROLRESPONSE"))

(in-package "ROS")





(defclass my_gazebo::ConveyorBeltControlRequest
  :super ros::object
  :slots (_state ))

(defmethod my_gazebo::ConveyorBeltControlRequest
  (:init
   (&key
    ((:state __state) (instance my_gazebo::ConveyorBeltState :init))
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; my_gazebo/ConveyorBeltState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; my_gazebo/ConveyorBeltState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; my_gazebo/ConveyorBeltState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass my_gazebo::ConveyorBeltControlResponse
  :super ros::object
  :slots (_success ))

(defmethod my_gazebo::ConveyorBeltControlResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass my_gazebo::ConveyorBeltControl
  :super ros::object
  :slots ())

(setf (get my_gazebo::ConveyorBeltControl :md5sum-) "9530768849645096e15ae7f875771ab2")
(setf (get my_gazebo::ConveyorBeltControl :datatype-) "my_gazebo/ConveyorBeltControl")
(setf (get my_gazebo::ConveyorBeltControl :request) my_gazebo::ConveyorBeltControlRequest)
(setf (get my_gazebo::ConveyorBeltControl :response) my_gazebo::ConveyorBeltControlResponse)

(defmethod my_gazebo::ConveyorBeltControlRequest
  (:response () (instance my_gazebo::ConveyorBeltControlResponse :init)))

(setf (get my_gazebo::ConveyorBeltControlRequest :md5sum-) "9530768849645096e15ae7f875771ab2")
(setf (get my_gazebo::ConveyorBeltControlRequest :datatype-) "my_gazebo/ConveyorBeltControlRequest")
(setf (get my_gazebo::ConveyorBeltControlRequest :definition-)
      "# Conveyor belt control

# desired conveyor belt state
ConveyorBeltState state


================================================================================
MSG: my_gazebo/ConveyorBeltState
# Conveyor belt state message
float64 power    # power of the belt (percentage, in +Y direction of belt frame)
---
bool success

")

(setf (get my_gazebo::ConveyorBeltControlResponse :md5sum-) "9530768849645096e15ae7f875771ab2")
(setf (get my_gazebo::ConveyorBeltControlResponse :datatype-) "my_gazebo/ConveyorBeltControlResponse")
(setf (get my_gazebo::ConveyorBeltControlResponse :definition-)
      "# Conveyor belt control

# desired conveyor belt state
ConveyorBeltState state


================================================================================
MSG: my_gazebo/ConveyorBeltState
# Conveyor belt state message
float64 power    # power of the belt (percentage, in +Y direction of belt frame)
---
bool success

")



(provide :my_gazebo/ConveyorBeltControl "9530768849645096e15ae7f875771ab2")


