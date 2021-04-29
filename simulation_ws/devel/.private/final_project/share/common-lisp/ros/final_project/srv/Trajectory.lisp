; Auto-generated. Do not edit!


(cl:in-package final_project-srv)


;//! \htmlinclude Trajectory-request.msg.html

(cl:defclass <Trajectory-request> (roslisp-msg-protocol:ros-message)
  ((initPos
    :reader initPos
    :initarg :initPos
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (goalPos
    :reader goalPos
    :initarg :goalPos
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (map
    :reader map
    :initarg :map
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid))
   (processCostMap
    :reader processCostMap
    :initarg :processCostMap
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (costMap
    :reader costMap
    :initarg :costMap
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid)))
)

(cl:defclass Trajectory-request (<Trajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name final_project-srv:<Trajectory-request> is deprecated: use final_project-srv:Trajectory-request instead.")))

(cl:ensure-generic-function 'initPos-val :lambda-list '(m))
(cl:defmethod initPos-val ((m <Trajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader final_project-srv:initPos-val is deprecated.  Use final_project-srv:initPos instead.")
  (initPos m))

(cl:ensure-generic-function 'goalPos-val :lambda-list '(m))
(cl:defmethod goalPos-val ((m <Trajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader final_project-srv:goalPos-val is deprecated.  Use final_project-srv:goalPos instead.")
  (goalPos m))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <Trajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader final_project-srv:map-val is deprecated.  Use final_project-srv:map instead.")
  (map m))

(cl:ensure-generic-function 'processCostMap-val :lambda-list '(m))
(cl:defmethod processCostMap-val ((m <Trajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader final_project-srv:processCostMap-val is deprecated.  Use final_project-srv:processCostMap instead.")
  (processCostMap m))

(cl:ensure-generic-function 'costMap-val :lambda-list '(m))
(cl:defmethod costMap-val ((m <Trajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader final_project-srv:costMap-val is deprecated.  Use final_project-srv:costMap instead.")
  (costMap m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trajectory-request>) ostream)
  "Serializes a message object of type '<Trajectory-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'initPos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goalPos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'processCostMap) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'costMap) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trajectory-request>) istream)
  "Deserializes a message object of type '<Trajectory-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'initPos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goalPos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'processCostMap) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'costMap) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trajectory-request>)))
  "Returns string type for a service object of type '<Trajectory-request>"
  "final_project/TrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trajectory-request)))
  "Returns string type for a service object of type 'Trajectory-request"
  "final_project/TrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trajectory-request>)))
  "Returns md5sum for a message object of type '<Trajectory-request>"
  "cf0b3e9a619f1b6f61663b5b48f9f6fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trajectory-request)))
  "Returns md5sum for a message object of type 'Trajectory-request"
  "cf0b3e9a619f1b6f61663b5b48f9f6fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trajectory-request>)))
  "Returns full string definition for message of type '<Trajectory-request>"
  (cl:format cl:nil "geometry_msgs/Point initPos~%geometry_msgs/Point goalPos~%nav_msgs/OccupancyGrid map~%std_msgs/Bool processCostMap~%nav_msgs/OccupancyGrid costMap~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trajectory-request)))
  "Returns full string definition for message of type 'Trajectory-request"
  (cl:format cl:nil "geometry_msgs/Point initPos~%geometry_msgs/Point goalPos~%nav_msgs/OccupancyGrid map~%std_msgs/Bool processCostMap~%nav_msgs/OccupancyGrid costMap~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trajectory-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'initPos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goalPos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'processCostMap))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'costMap))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Trajectory-request
    (cl:cons ':initPos (initPos msg))
    (cl:cons ':goalPos (goalPos msg))
    (cl:cons ':map (map msg))
    (cl:cons ':processCostMap (processCostMap msg))
    (cl:cons ':costMap (costMap msg))
))
;//! \htmlinclude Trajectory-response.msg.html

(cl:defclass <Trajectory-response> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass Trajectory-response (<Trajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name final_project-srv:<Trajectory-response> is deprecated: use final_project-srv:Trajectory-response instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <Trajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader final_project-srv:path-val is deprecated.  Use final_project-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trajectory-response>) ostream)
  "Serializes a message object of type '<Trajectory-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trajectory-response>) istream)
  "Deserializes a message object of type '<Trajectory-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trajectory-response>)))
  "Returns string type for a service object of type '<Trajectory-response>"
  "final_project/TrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trajectory-response)))
  "Returns string type for a service object of type 'Trajectory-response"
  "final_project/TrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trajectory-response>)))
  "Returns md5sum for a message object of type '<Trajectory-response>"
  "cf0b3e9a619f1b6f61663b5b48f9f6fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trajectory-response)))
  "Returns md5sum for a message object of type 'Trajectory-response"
  "cf0b3e9a619f1b6f61663b5b48f9f6fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trajectory-response>)))
  "Returns full string definition for message of type '<Trajectory-response>"
  (cl:format cl:nil "nav_msgs/Path path~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trajectory-response)))
  "Returns full string definition for message of type 'Trajectory-response"
  (cl:format cl:nil "nav_msgs/Path path~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trajectory-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Trajectory-response
    (cl:cons ':path (path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Trajectory)))
  'Trajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Trajectory)))
  'Trajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trajectory)))
  "Returns string type for a service object of type '<Trajectory>"
  "final_project/Trajectory")