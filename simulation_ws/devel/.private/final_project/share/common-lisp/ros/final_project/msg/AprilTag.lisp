; Auto-generated. Do not edit!


(cl:in-package final_project-msg)


;//! \htmlinclude AprilTag.msg.html

(cl:defclass <AprilTag> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform ""))
)

(cl:defclass AprilTag (<AprilTag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AprilTag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AprilTag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name final_project-msg:<AprilTag> is deprecated: use final_project-msg:AprilTag instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AprilTag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader final_project-msg:header-val is deprecated.  Use final_project-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <AprilTag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader final_project-msg:point-val is deprecated.  Use final_project-msg:point instead.")
  (point m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <AprilTag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader final_project-msg:id-val is deprecated.  Use final_project-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AprilTag>) ostream)
  "Serializes a message object of type '<AprilTag>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AprilTag>) istream)
  "Deserializes a message object of type '<AprilTag>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AprilTag>)))
  "Returns string type for a message object of type '<AprilTag>"
  "final_project/AprilTag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AprilTag)))
  "Returns string type for a message object of type 'AprilTag"
  "final_project/AprilTag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AprilTag>)))
  "Returns md5sum for a message object of type '<AprilTag>"
  "0653bc8793c1ec6d496086a23eb8fd96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AprilTag)))
  "Returns md5sum for a message object of type 'AprilTag"
  "0653bc8793c1ec6d496086a23eb8fd96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AprilTag>)))
  "Returns full string definition for message of type '<AprilTag>"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Point point~%string id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AprilTag)))
  "Returns full string definition for message of type 'AprilTag"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Point point~%string id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AprilTag>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     4 (cl:length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AprilTag>))
  "Converts a ROS message object to a list"
  (cl:list 'AprilTag
    (cl:cons ':header (header msg))
    (cl:cons ':point (point msg))
    (cl:cons ':id (id msg))
))
