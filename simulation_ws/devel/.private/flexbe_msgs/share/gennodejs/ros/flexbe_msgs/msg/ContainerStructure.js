// Auto-generated. Do not edit!

// (in-package flexbe_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Container = require('./Container.js');

//-----------------------------------------------------------

class ContainerStructure {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.behavior_id = null;
      this.containers = null;
    }
    else {
      if (initObj.hasOwnProperty('behavior_id')) {
        this.behavior_id = initObj.behavior_id
      }
      else {
        this.behavior_id = 0;
      }
      if (initObj.hasOwnProperty('containers')) {
        this.containers = initObj.containers
      }
      else {
        this.containers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ContainerStructure
    // Serialize message field [behavior_id]
    bufferOffset = _serializer.int32(obj.behavior_id, buffer, bufferOffset);
    // Serialize message field [containers]
    // Serialize the length for message field [containers]
    bufferOffset = _serializer.uint32(obj.containers.length, buffer, bufferOffset);
    obj.containers.forEach((val) => {
      bufferOffset = Container.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ContainerStructure
    let len;
    let data = new ContainerStructure(null);
    // Deserialize message field [behavior_id]
    data.behavior_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [containers]
    // Deserialize array length for message field [containers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.containers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.containers[i] = Container.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.containers.forEach((val) => {
      length += Container.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'flexbe_msgs/ContainerStructure';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9cd26d15621063b90279d87117694328';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 behavior_id
    Container[] containers
    ================================================================================
    MSG: flexbe_msgs/Container
    string path
    string[] children
    string[] outcomes
    string[] transitions
    byte[] autonomy
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ContainerStructure(null);
    if (msg.behavior_id !== undefined) {
      resolved.behavior_id = msg.behavior_id;
    }
    else {
      resolved.behavior_id = 0
    }

    if (msg.containers !== undefined) {
      resolved.containers = new Array(msg.containers.length);
      for (let i = 0; i < resolved.containers.length; ++i) {
        resolved.containers[i] = Container.Resolve(msg.containers[i]);
      }
    }
    else {
      resolved.containers = []
    }

    return resolved;
    }
};

module.exports = ContainerStructure;
