// Auto-generated. Do not edit!

// (in-package final_project.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_msgs = _finder('nav_msgs');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class TrajectoryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.initPos = null;
      this.goalPos = null;
      this.map = null;
      this.processCostMap = null;
      this.costMap = null;
    }
    else {
      if (initObj.hasOwnProperty('initPos')) {
        this.initPos = initObj.initPos
      }
      else {
        this.initPos = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('goalPos')) {
        this.goalPos = initObj.goalPos
      }
      else {
        this.goalPos = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('map')) {
        this.map = initObj.map
      }
      else {
        this.map = new nav_msgs.msg.OccupancyGrid();
      }
      if (initObj.hasOwnProperty('processCostMap')) {
        this.processCostMap = initObj.processCostMap
      }
      else {
        this.processCostMap = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('costMap')) {
        this.costMap = initObj.costMap
      }
      else {
        this.costMap = new nav_msgs.msg.OccupancyGrid();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryRequest
    // Serialize message field [initPos]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.initPos, buffer, bufferOffset);
    // Serialize message field [goalPos]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.goalPos, buffer, bufferOffset);
    // Serialize message field [map]
    bufferOffset = nav_msgs.msg.OccupancyGrid.serialize(obj.map, buffer, bufferOffset);
    // Serialize message field [processCostMap]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.processCostMap, buffer, bufferOffset);
    // Serialize message field [costMap]
    bufferOffset = nav_msgs.msg.OccupancyGrid.serialize(obj.costMap, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryRequest
    let len;
    let data = new TrajectoryRequest(null);
    // Deserialize message field [initPos]
    data.initPos = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [goalPos]
    data.goalPos = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [map]
    data.map = nav_msgs.msg.OccupancyGrid.deserialize(buffer, bufferOffset);
    // Deserialize message field [processCostMap]
    data.processCostMap = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [costMap]
    data.costMap = nav_msgs.msg.OccupancyGrid.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.OccupancyGrid.getMessageSize(object.map);
    length += nav_msgs.msg.OccupancyGrid.getMessageSize(object.costMap);
    return length + 49;
  }

  static datatype() {
    // Returns string type for a service object
    return 'final_project/TrajectoryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64c1d7e1f483fd6bc5cfb63aa85bb0d3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point initPos
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
    bool data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrajectoryRequest(null);
    if (msg.initPos !== undefined) {
      resolved.initPos = geometry_msgs.msg.Point.Resolve(msg.initPos)
    }
    else {
      resolved.initPos = new geometry_msgs.msg.Point()
    }

    if (msg.goalPos !== undefined) {
      resolved.goalPos = geometry_msgs.msg.Point.Resolve(msg.goalPos)
    }
    else {
      resolved.goalPos = new geometry_msgs.msg.Point()
    }

    if (msg.map !== undefined) {
      resolved.map = nav_msgs.msg.OccupancyGrid.Resolve(msg.map)
    }
    else {
      resolved.map = new nav_msgs.msg.OccupancyGrid()
    }

    if (msg.processCostMap !== undefined) {
      resolved.processCostMap = std_msgs.msg.Bool.Resolve(msg.processCostMap)
    }
    else {
      resolved.processCostMap = new std_msgs.msg.Bool()
    }

    if (msg.costMap !== undefined) {
      resolved.costMap = nav_msgs.msg.OccupancyGrid.Resolve(msg.costMap)
    }
    else {
      resolved.costMap = new nav_msgs.msg.OccupancyGrid()
    }

    return resolved;
    }
};

class TrajectoryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path = null;
    }
    else {
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = new nav_msgs.msg.Path();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryResponse
    // Serialize message field [path]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryResponse
    let len;
    let data = new TrajectoryResponse(null);
    // Deserialize message field [path]
    data.path = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.Path.getMessageSize(object.path);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'final_project/TrajectoryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58d6f138c7de7ef47c75d4b7e5df5472';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrajectoryResponse(null);
    if (msg.path !== undefined) {
      resolved.path = nav_msgs.msg.Path.Resolve(msg.path)
    }
    else {
      resolved.path = new nav_msgs.msg.Path()
    }

    return resolved;
    }
};

module.exports = {
  Request: TrajectoryRequest,
  Response: TrajectoryResponse,
  md5sum() { return 'cf0b3e9a619f1b6f61663b5b48f9f6fb'; },
  datatype() { return 'final_project/Trajectory'; }
};
