; Auto-generated. Do not edit!


(cl:in-package flexbe_msgs-msg)


;//! \htmlinclude BehaviorExecutionFeedback.msg.html

(cl:defclass <BehaviorExecutionFeedback> (roslisp-msg-protocol:ros-message)
  ((current_state
    :reader current_state
    :initarg :current_state
    :type cl:string
    :initform ""))
)

(cl:defclass BehaviorExecutionFeedback (<BehaviorExecutionFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BehaviorExecutionFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BehaviorExecutionFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexbe_msgs-msg:<BehaviorExecutionFeedback> is deprecated: use flexbe_msgs-msg:BehaviorExecutionFeedback instead.")))

(cl:ensure-generic-function 'current_state-val :lambda-list '(m))
(cl:defmethod current_state-val ((m <BehaviorExecutionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:current_state-val is deprecated.  Use flexbe_msgs-msg:current_state instead.")
  (current_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BehaviorExecutionFeedback>) ostream)
  "Serializes a message object of type '<BehaviorExecutionFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BehaviorExecutionFeedback>) istream)
  "Deserializes a message object of type '<BehaviorExecutionFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BehaviorExecutionFeedback>)))
  "Returns string type for a message object of type '<BehaviorExecutionFeedback>"
  "flexbe_msgs/BehaviorExecutionFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BehaviorExecutionFeedback)))
  "Returns string type for a message object of type 'BehaviorExecutionFeedback"
  "flexbe_msgs/BehaviorExecutionFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BehaviorExecutionFeedback>)))
  "Returns md5sum for a message object of type '<BehaviorExecutionFeedback>"
  "6b3c1b68b57cc9263bf79fc4ad6ec8c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BehaviorExecutionFeedback)))
  "Returns md5sum for a message object of type 'BehaviorExecutionFeedback"
  "6b3c1b68b57cc9263bf79fc4ad6ec8c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BehaviorExecutionFeedback>)))
  "Returns full string definition for message of type '<BehaviorExecutionFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%# path of the current state~%string current_state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BehaviorExecutionFeedback)))
  "Returns full string definition for message of type 'BehaviorExecutionFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%# path of the current state~%string current_state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BehaviorExecutionFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'current_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BehaviorExecutionFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'BehaviorExecutionFeedback
    (cl:cons ':current_state (current_state msg))
))
