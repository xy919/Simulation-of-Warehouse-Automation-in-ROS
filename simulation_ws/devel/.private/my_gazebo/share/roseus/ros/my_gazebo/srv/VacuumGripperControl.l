;; Auto-generated. Do not edit!


(when (boundp 'my_gazebo::VacuumGripperControl)
  (if (not (find-package "MY_GAZEBO"))
    (make-package "MY_GAZEBO"))
  (shadow 'VacuumGripperControl (find-package "MY_GAZEBO")))
(unless (find-package "MY_GAZEBO::VACUUMGRIPPERCONTROL")
  (make-package "MY_GAZEBO::VACUUMGRIPPERCONTROL"))
(unless (find-package "MY_GAZEBO::VACUUMGRIPPERCONTROLREQUEST")
  (make-package "MY_GAZEBO::VACUUMGRIPPERCONTROLREQUEST"))
(unless (find-package "MY_GAZEBO::VACUUMGRIPPERCONTROLRESPONSE")
  (make-package "MY_GAZEBO::VACUUMGRIPPERCONTROLRESPONSE"))

(in-package "ROS")





(defclass my_gazebo::VacuumGripperControlRequest
  :super ros::object
  :slots (_enable ))

(defmethod my_gazebo::VacuumGripperControlRequest
  (:init
   (&key
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _enable __enable)
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass my_gazebo::VacuumGripperControlResponse
  :super ros::object
  :slots (_success ))

(defmethod my_gazebo::VacuumGripperControlResponse
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

(defclass my_gazebo::VacuumGripperControl
  :super ros::object
  :slots ())

(setf (get my_gazebo::VacuumGripperControl :md5sum-) "6a0b406242562fc416b2c9c8a3efb051")
(setf (get my_gazebo::VacuumGripperControl :datatype-) "my_gazebo/VacuumGripperControl")
(setf (get my_gazebo::VacuumGripperControl :request) my_gazebo::VacuumGripperControlRequest)
(setf (get my_gazebo::VacuumGripperControl :response) my_gazebo::VacuumGripperControlResponse)

(defmethod my_gazebo::VacuumGripperControlRequest
  (:response () (instance my_gazebo::VacuumGripperControlResponse :init)))

(setf (get my_gazebo::VacuumGripperControlRequest :md5sum-) "6a0b406242562fc416b2c9c8a3efb051")
(setf (get my_gazebo::VacuumGripperControlRequest :datatype-) "my_gazebo/VacuumGripperControlRequest")
(setf (get my_gazebo::VacuumGripperControlRequest :definition-)
      "# Vacuum gripper control

# Enable/Disable gripper suction
bool enable

---
bool success

")

(setf (get my_gazebo::VacuumGripperControlResponse :md5sum-) "6a0b406242562fc416b2c9c8a3efb051")
(setf (get my_gazebo::VacuumGripperControlResponse :datatype-) "my_gazebo/VacuumGripperControlResponse")
(setf (get my_gazebo::VacuumGripperControlResponse :definition-)
      "# Vacuum gripper control

# Enable/Disable gripper suction
bool enable

---
bool success

")



(provide :my_gazebo/VacuumGripperControl "6a0b406242562fc416b2c9c8a3efb051")


