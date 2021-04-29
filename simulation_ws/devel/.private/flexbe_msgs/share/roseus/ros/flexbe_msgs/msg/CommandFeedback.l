;; Auto-generated. Do not edit!


(when (boundp 'flexbe_msgs::CommandFeedback)
  (if (not (find-package "FLEXBE_MSGS"))
    (make-package "FLEXBE_MSGS"))
  (shadow 'CommandFeedback (find-package "FLEXBE_MSGS")))
(unless (find-package "FLEXBE_MSGS::COMMANDFEEDBACK")
  (make-package "FLEXBE_MSGS::COMMANDFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude CommandFeedback.msg.html


(defclass flexbe_msgs::CommandFeedback
  :super ros::object
  :slots (_command _args ))

(defmethod flexbe_msgs::CommandFeedback
  (:init
   (&key
    ((:command __command) "")
    ((:args __args) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _command (string __command))
   (setq _args __args)
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:args
   (&optional __args)
   (if __args (setq _args __args)) _args)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ;; string[] _args
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _args)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; string[] _args
     (write-long (length _args) s)
     (dolist (elem _args)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _args
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _args (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _args i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get flexbe_msgs::CommandFeedback :md5sum-) "0c984ea7f8fc562a9c04a778877e1a03")
(setf (get flexbe_msgs::CommandFeedback :datatype-) "flexbe_msgs/CommandFeedback")
(setf (get flexbe_msgs::CommandFeedback :definition-)
      "string command
string[] args
")



(provide :flexbe_msgs/CommandFeedback "0c984ea7f8fc562a9c04a778877e1a03")


