// Auto-generated. Do not edit!

// (in-package flexbe_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BEStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.behavior_id = null;
      this.code = null;
      this.args = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('behavior_id')) {
        this.behavior_id = initObj.behavior_id
      }
      else {
        this.behavior_id = 0;
      }
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = 0;
      }
      if (initObj.hasOwnProperty('args')) {
        this.args = initObj.args
      }
      else {
        this.args = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BEStatus
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [behavior_id]
    bufferOffset = _serializer.int32(obj.behavior_id, buffer, bufferOffset);
    // Serialize message field [code]
    bufferOffset = _serializer.uint8(obj.code, buffer, bufferOffset);
    // Serialize message field [args]
    bufferOffset = _arraySerializer.string(obj.args, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BEStatus
    let len;
    let data = new BEStatus(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [behavior_id]
    data.behavior_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [code]
    data.code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [args]
    data.args = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.args.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'flexbe_msgs/BEStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '467355de4ad406f864268f41621cb885';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Behavior Status
    uint8 STARTED = 0
    uint8 FINISHED = 1
    uint8 FAILED = 2
    
    uint8 LOCKED = 4
    uint8 WAITING = 5
    uint8 SWITCHING = 6
    
    # General problems
    uint8 WARNING = 10
    uint8 ERROR = 11
    
    # Engine Status
    uint8 READY = 20
    
    time stamp
    int32 behavior_id
    uint8 code
    
    string[] args
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BEStatus(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.behavior_id !== undefined) {
      resolved.behavior_id = msg.behavior_id;
    }
    else {
      resolved.behavior_id = 0
    }

    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = 0
    }

    if (msg.args !== undefined) {
      resolved.args = msg.args;
    }
    else {
      resolved.args = []
    }

    return resolved;
    }
};

// Constants for message
BEStatus.Constants = {
  STARTED: 0,
  FINISHED: 1,
  FAILED: 2,
  LOCKED: 4,
  WAITING: 5,
  SWITCHING: 6,
  WARNING: 10,
  ERROR: 11,
  READY: 20,
}

module.exports = BEStatus;
