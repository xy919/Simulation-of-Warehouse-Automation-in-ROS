;; Auto-generated. Do not edit!


(when (boundp 'flexbe_msgs::UICommand)
  (if (not (find-package "FLEXBE_MSGS"))
    (make-package "FLEXBE_MSGS"))
  (shadow 'UICommand (find-package "FLEXBE_MSGS")))
(unless (find-package "FLEXBE_MSGS::UICOMMAND")
  (make-package "FLEXBE_MSGS::UICOMMAND"))

(in-package "ROS")
;;//! \htmlinclude UICommand.msg.html


(defclass flexbe_msgs::UICommand
  :super ros::object
  :slots (_command _key ))

(defmethod flexbe_msgs::UICommand
  (:init
   (&key
    ((:command __command) "")
    ((:key __key) "")
    )
   (send-super :init)
   (setq _command (string __command))
   (setq _key (string __key))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ;; string _key
    4 (length _key)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; string _key
       (write-long (length _key) s) (princ _key s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get flexbe_msgs::UICommand :md5sum-) "88f45469138737816fa9cd59fbf3c084")
(setf (get flexbe_msgs::UICommand :datatype-) "flexbe_msgs/UICommand")
(setf (get flexbe_msgs::UICommand :definition-)
      "# Sends a command to the command interface of the FlexBE UI.
# In order to be successfully executed, the user needs to have ROS commands enabled and the keys have to match.

# Command to be executed as it would be entered in the command interface
string command

# Security key, needs to match the key set in the UI
string key

")



(provide :flexbe_msgs/UICommand "88f45469138737816fa9cd59fbf3c084")


