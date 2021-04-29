;; Auto-generated. Do not edit!


(when (boundp 'final_project::Trajectory)
  (if (not (find-package "FINAL_PROJECT"))
    (make-package "FINAL_PROJECT"))
  (shadow 'Trajectory (find-package "FINAL_PROJECT")))
(unless (find-package "FINAL_PROJECT::TRAJECTORY")
  (make-package "FINAL_PROJECT::TRAJECTORY"))
(unless (find-package "FINAL_PROJECT::TRAJECTORYREQUEST")
  (make-package "FINAL_PROJECT::TRAJECTORYREQUEST"))
(unless (find-package "FINAL_PROJECT::TRAJECTORYRESPONSE")
  (make-package "FINAL_PROJECT::TRAJECTORYRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass final_project::TrajectoryRequest
  :super ros::object
  :slots (_initPos _goalPos _map _processCostMap _costMap ))

(defmethod final_project::TrajectoryRequest
  (:init
   (&key
    ((:initPos __initPos) (instance geometry_msgs::Point :init))
    ((:goalPos __goalPos) (instance geometry_msgs::Point :init))
    ((:map __map) (instance nav_msgs::OccupancyGrid :init))
    ((:processCostMap __processCostMap) (instance std_msgs::Bool :init))
    ((:costMap __costMap) (instance nav_msgs::OccupancyGrid :init))
    )
   (send-super :init)
   (setq _initPos __initPos)
   (setq _goalPos __goalPos)
   (setq _map __map)
   (setq _processCostMap __processCostMap)
   (setq _costMap __costMap)
   self)
  (:initPos
   (&rest __initPos)
   (if (keywordp (car __initPos))
       (send* _initPos __initPos)
     (progn
       (if __initPos (setq _initPos (car __initPos)))
       _initPos)))
  (:goalPos
   (&rest __goalPos)
   (if (keywordp (car __goalPos))
       (send* _goalPos __goalPos)
     (progn
       (if __goalPos (setq _goalPos (car __goalPos)))
       _goalPos)))
  (:map
   (&rest __map)
   (if (keywordp (car __map))
       (send* _map __map)
     (progn
       (if __map (setq _map (car __map)))
       _map)))
  (:processCostMap
   (&rest __processCostMap)
   (if (keywordp (car __processCostMap))
       (send* _processCostMap __processCostMap)
     (progn
       (if __processCostMap (setq _processCostMap (car __processCostMap)))
       _processCostMap)))
  (:costMap
   (&rest __costMap)
   (if (keywordp (car __costMap))
       (send* _costMap __costMap)
     (progn
       (if __costMap (setq _costMap (car __costMap)))
       _costMap)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _initPos
    (send _initPos :serialization-length)
    ;; geometry_msgs/Point _goalPos
    (send _goalPos :serialization-length)
    ;; nav_msgs/OccupancyGrid _map
    (send _map :serialization-length)
    ;; std_msgs/Bool _processCostMap
    (send _processCostMap :serialization-length)
    ;; nav_msgs/OccupancyGrid _costMap
    (send _costMap :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _initPos
       (send _initPos :serialize s)
     ;; geometry_msgs/Point _goalPos
       (send _goalPos :serialize s)
     ;; nav_msgs/OccupancyGrid _map
       (send _map :serialize s)
     ;; std_msgs/Bool _processCostMap
       (send _processCostMap :serialize s)
     ;; nav_msgs/OccupancyGrid _costMap
       (send _costMap :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _initPos
     (send _initPos :deserialize buf ptr-) (incf ptr- (send _initPos :serialization-length))
   ;; geometry_msgs/Point _goalPos
     (send _goalPos :deserialize buf ptr-) (incf ptr- (send _goalPos :serialization-length))
   ;; nav_msgs/OccupancyGrid _map
     (send _map :deserialize buf ptr-) (incf ptr- (send _map :serialization-length))
   ;; std_msgs/Bool _processCostMap
     (send _processCostMap :deserialize buf ptr-) (incf ptr- (send _processCostMap :serialization-length))
   ;; nav_msgs/OccupancyGrid _costMap
     (send _costMap :deserialize buf ptr-) (incf ptr- (send _costMap :serialization-length))
   ;;
   self)
  )

(defclass final_project::TrajectoryResponse
  :super ros::object
  :slots (_path ))

(defmethod final_project::TrajectoryResponse
  (:init
   (&key
    ((:path __path) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _path __path)
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _path
    (send _path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _path
       (send _path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;;
   self)
  )

(defclass final_project::Trajectory
  :super ros::object
  :slots ())

(setf (get final_project::Trajectory :md5sum-) "cf0b3e9a619f1b6f61663b5b48f9f6fb")
(setf (get final_project::Trajectory :datatype-) "final_project/Trajectory")
(setf (get final_project::Trajectory :request) final_project::TrajectoryRequest)
(setf (get final_project::Trajectory :response) final_project::TrajectoryResponse)

(defmethod final_project::TrajectoryRequest
  (:response () (instance final_project::TrajectoryResponse :init)))

(setf (get final_project::TrajectoryRequest :md5sum-) "cf0b3e9a619f1b6f61663b5b48f9f6fb")
(setf (get final_project::TrajectoryRequest :datatype-) "final_project/TrajectoryRequest")
(setf (get final_project::TrajectoryRequest :definition-)
      "geometry_msgs/Point initPos
geometry_msgs/Point goalPos
nav_msgs/OccupancyGrid map
std_msgs/Bool processCostMap
nav_msgs/OccupancyGrid costMap

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/Bool
---
nav_msgs/Path path


================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get final_project::TrajectoryResponse :md5sum-) "cf0b3e9a619f1b6f61663b5b48f9f6fb")
(setf (get final_project::TrajectoryResponse :datatype-) "final_project/TrajectoryResponse")
(setf (get final_project::TrajectoryResponse :definition-)
      "geometry_msgs/Point initPos
geometry_msgs/Point goalPos
nav_msgs/OccupancyGrid map
std_msgs/Bool processCostMap
nav_msgs/OccupancyGrid costMap

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/Bool
---
nav_msgs/Path path


================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :final_project/Trajectory "cf0b3e9a619f1b6f61663b5b48f9f6fb")


