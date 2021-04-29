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

class BehaviorSync {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.behavior_id = null;
      this.current_state_checksum = null;
    }
    else {
      if (initObj.hasOwnProperty('behavior_id')) {
        this.behavior_id = initObj.behavior_id
      }
      else {
        this.behavior_id = 0;
      }
      if (initObj.hasOwnProperty('current_state_checksum')) {
        this.current_state_checksum = initObj.current_state_checksum
      }
      else {
        this.current_state_checksum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BehaviorSync
    // Serialize message field [behavior_id]
    bufferOffset = _serializer.int32(obj.behavior_id, buffer, bufferOffset);
    // Serialize message field [current_state_checksum]
    bufferOffset = _serializer.int32(obj.current_state_checksum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BehaviorSync
    let len;
    let data = new BehaviorSync(null);
    // Deserialize message field [behavior_id]
    data.behavior_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [current_state_checksum]
    data.current_state_checksum = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'flexbe_msgs/BehaviorSync';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '118d64f48696509906c4cf4a228608b1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 behavior_id
    
    int32 current_state_checksum
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BehaviorSync(null);
    if (msg.behavior_id !== undefined) {
      resolved.behavior_id = msg.behavior_id;
    }
    else {
      resolved.behavior_id = 0
    }

    if (msg.current_state_checksum !== undefined) {
      resolved.current_state_checksum = msg.current_state_checksum;
    }
    else {
      resolved.current_state_checksum = 0
    }

    return resolved;
    }
};

module.exports = BehaviorSync;
