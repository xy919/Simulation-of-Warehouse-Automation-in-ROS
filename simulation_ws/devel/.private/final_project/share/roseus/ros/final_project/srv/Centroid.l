;; Auto-generated. Do not edit!


(when (boundp 'final_project::Centroid)
  (if (not (find-package "FINAL_PROJECT"))
    (make-package "FINAL_PROJECT"))
  (shadow 'Centroid (find-package "FINAL_PROJECT")))
(unless (find-package "FINAL_PROJECT::CENTROID")
  (make-package "FINAL_PROJECT::CENTROID"))
(unless (find-package "FINAL_PROJECT::CENTROIDREQUEST")
  (make-package "FINAL_PROJECT::CENTROIDREQUEST"))
(unless (find-package "FINAL_PROJECT::CENTROIDRESPONSE")
  (make-package "FINAL_PROJECT::CENTROIDRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass final_project::CentroidRequest
  :super ros::object
  :slots (_map _currentPos ))

(defmethod final_project::CentroidRequest
  (:init
   (&key
    ((:map __map) (instance nav_msgs::OccupancyGrid :init))
    ((:currentPos __currentPos) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _map __map)
   (setq _currentPos __currentPos)
   self)
  (:map
   (&rest __map)
   (if (keywordp (car __map))
       (send* _map __map)
     (progn
       (if __map (setq _map (car __map)))
       _map)))
  (:currentPos
   (&rest __currentPos)
   (if (keywordp (car __currentPos))
       (send* _currentPos __currentPos)
     (progn
       (if __currentPos (setq _currentPos (car __currentPos)))
       _currentPos)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/OccupancyGrid _map
    (send _map :serialization-length)
    ;; geometry_msgs/Point _currentPos
    (send _currentPos :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/OccupancyGrid _map
       (send _map :serialize s)
     ;; geometry_msgs/Point _currentPos
       (send _currentPos :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/OccupancyGrid _map
     (send _map :deserialize buf ptr-) (incf ptr- (send _map :serialization-length))
   ;; geometry_msgs/Point _currentPos
     (send _currentPos :deserialize buf ptr-) (incf ptr- (send _currentPos :serialization-length))
   ;;
   self)
  )

(defclass final_project::CentroidResponse
  :super ros::object
  :slots (_foundCentroid _centroid ))

(defmethod final_project::CentroidResponse
  (:init
   (&key
    ((:foundCentroid __foundCentroid) (instance std_msgs::Bool :init))
    ((:centroid __centroid) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _foundCentroid __foundCentroid)
   (setq _centroid __centroid)
   self)
  (:foundCentroid
   (&rest __foundCentroid)
   (if (keywordp (car __foundCentroid))
       (send* _foundCentroid __foundCentroid)
     (progn
       (if __foundCentroid (setq _foundCentroid (car __foundCentroid)))
       _foundCentroid)))
  (:centroid
   (&rest __centroid)
   (if (keywordp (car __centroid))
       (send* _centroid __centroid)
     (progn
       (if __centroid (setq _centroid (car __centroid)))
       _centroid)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _foundCentroid
    (send _foundCentroid :serialization-length)
    ;; geometry_msgs/Point _centroid
    (send _centroid :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _foundCentroid
       (send _foundCentroid :serialize s)
     ;; geometry_msgs/Point _centroid
       (send _centroid :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _foundCentroid
     (send _foundCentroid :deserialize buf ptr-) (incf ptr- (send _foundCentroid :serialization-length))
   ;; geometry_msgs/Point _centroid
     (send _centroid :deserialize buf ptr-) (incf ptr- (send _centroid :serialization-length))
   ;;
   self)
  )

(defclass final_project::Centroid
  :super ros::object
  :slots ())

(setf (get final_project::Centroid :md5sum-) "e312be5ce6c21441e8388059848bcd52")
(setf (get final_project::Centroid :datatype-) "final_project/Centroid")
(setf (get final_project::Centroid :request) final_project::CentroidRequest)
(setf (get final_project::Centroid :response) final_project::CentroidResponse)

(defmethod final_project::CentroidRequest
  (:response () (instance final_project::CentroidResponse :init)))

(setf (get final_project::CentroidRequest :md5sum-) "e312be5ce6c21441e8388059848bcd52")
(setf (get final_project::CentroidRequest :datatype-) "final_project/CentroidRequest")
(setf (get final_project::CentroidRequest :definition-)
      "nav_msgs/OccupancyGrid map
geometry_msgs/Point currentPos

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
---
std_msgs/Bool foundCentroid
geometry_msgs/Point centroid


================================================================================
MSG: std_msgs/Bool
bool data
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get final_project::CentroidResponse :md5sum-) "e312be5ce6c21441e8388059848bcd52")
(setf (get final_project::CentroidResponse :datatype-) "final_project/CentroidResponse")
(setf (get final_project::CentroidResponse :definition-)
      "nav_msgs/OccupancyGrid map
geometry_msgs/Point currentPos

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
---
std_msgs/Bool foundCentroid
geometry_msgs/Point centroid


================================================================================
MSG: std_msgs/Bool
bool data
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :final_project/Centroid "e312be5ce6c21441e8388059848bcd52")


