; Auto-generated. Do not edit!


(cl:in-package final_project-srv)


;//! \htmlinclude Centroid-request.msg.html

(cl:defclass <Centroid-request> (roslisp-msg-protocol:ros-message)
  ((map
    :reader map
    :initarg :map
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid))
   (currentPos
    :reader currentPos
    :initarg :currentPos
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass Centroid-request (<Centroid-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Centroid-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Centroid-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name final_project-srv:<Centroid-request> is deprecated: use final_project-srv:Centroid-request instead.")))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <Centroid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader final_project-srv:map-val is deprecated.  Use final_project-srv:map instead.")
  (map m))

(cl:ensure-generic-function 'currentPos-val :lambda-list '(m))
(cl:defmethod currentPos-val ((m <Centroid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader final_project-srv:currentPos-val is deprecated.  Use final_project-srv:currentPos instead.")
  (currentPos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Centroid-request>) ostream)
  "Serializes a message object of type '<Centroid-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'currentPos) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Centroid-request>) istream)
  "Deserializes a message object of type '<Centroid-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'currentPos) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Centroid-request>)))
  "Returns string type for a service object of type '<Centroid-request>"
  "final_project/CentroidRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Centroid-request)))
  "Returns string type for a service object of type 'Centroid-request"
  "final_project/CentroidRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Centroid-request>)))
  "Returns md5sum for a message object of type '<Centroid-request>"
  "e312be5ce6c21441e8388059848bcd52")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Centroid-request)))
  "Returns md5sum for a message object of type 'Centroid-request"
  "e312be5ce6c21441e8388059848bcd52")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Centroid-request>)))
  "Returns full string definition for message of type '<Centroid-request>"
  (cl:format cl:nil "nav_msgs/OccupancyGrid map~%geometry_msgs/Point currentPos~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Centroid-request)))
  "Returns full string definition for message of type 'Centroid-request"
  (cl:format cl:nil "nav_msgs/OccupancyGrid map~%geometry_msgs/Point currentPos~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Centroid-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'currentPos))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Centroid-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Centroid-request
    (cl:cons ':map (map msg))
    (cl:cons ':currentPos (currentPos msg))
))
;//! \htmlinclude Centroid-response.msg.html

(cl:defclass <Centroid-response> (roslisp-msg-protocol:ros-message)
  ((foundCentroid
    :reader foundCentroid
    :initarg :foundCentroid
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (centroid
    :reader centroid
    :initarg :centroid
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass Centroid-response (<Centroid-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Centroid-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Centroid-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name final_project-srv:<Centroid-response> is deprecated: use final_project-srv:Centroid-response instead.")))

(cl:ensure-generic-function 'foundCentroid-val :lambda-list '(m))
(cl:defmethod foundCentroid-val ((m <Centroid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader final_project-srv:foundCentroid-val is deprecated.  Use final_project-srv:foundCentroid instead.")
  (foundCentroid m))

(cl:ensure-generic-function 'centroid-val :lambda-list '(m))
(cl:defmethod centroid-val ((m <Centroid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader final_project-srv:centroid-val is deprecated.  Use final_project-srv:centroid instead.")
  (centroid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Centroid-response>) ostream)
  "Serializes a message object of type '<Centroid-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'foundCentroid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centroid) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Centroid-response>) istream)
  "Deserializes a message object of type '<Centroid-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'foundCentroid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centroid) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Centroid-response>)))
  "Returns string type for a service object of type '<Centroid-response>"
  "final_project/CentroidResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Centroid-response)))
  "Returns string type for a service object of type 'Centroid-response"
  "final_project/CentroidResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Centroid-response>)))
  "Returns md5sum for a message object of type '<Centroid-response>"
  "e312be5ce6c21441e8388059848bcd52")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Centroid-response)))
  "Returns md5sum for a message object of type 'Centroid-response"
  "e312be5ce6c21441e8388059848bcd52")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Centroid-response>)))
  "Returns full string definition for message of type '<Centroid-response>"
  (cl:format cl:nil "std_msgs/Bool foundCentroid~%geometry_msgs/Point centroid~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Centroid-response)))
  "Returns full string definition for message of type 'Centroid-response"
  (cl:format cl:nil "std_msgs/Bool foundCentroid~%geometry_msgs/Point centroid~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Centroid-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'foundCentroid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centroid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Centroid-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Centroid-response
    (cl:cons ':foundCentroid (foundCentroid msg))
    (cl:cons ':centroid (centroid msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Centroid)))
  'Centroid-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Centroid)))
  'Centroid-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Centroid)))
  "Returns string type for a service object of type '<Centroid>"
  "final_project/Centroid")