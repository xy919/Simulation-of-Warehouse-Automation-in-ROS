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

class BehaviorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.behavior_name = null;
      this.autonomy_level = null;
      this.arg_keys = null;
      this.arg_values = null;
      this.structure = null;
    }
    else {
      if (initObj.hasOwnProperty('behavior_name')) {
        this.behavior_name = initObj.behavior_name
      }
      else {
        this.behavior_name = '';
      }
      if (initObj.hasOwnProperty('autonomy_level')) {
        this.autonomy_level = initObj.autonomy_level
      }
      else {
        this.autonomy_level = 0;
      }
      if (initObj.hasOwnProperty('arg_keys')) {
        this.arg_keys = initObj.arg_keys
      }
      else {
        this.arg_keys = [];
      }
      if (initObj.hasOwnProperty('arg_values')) {
        this.arg_values = initObj.arg_values
      }
      else {
        this.arg_values = [];
      }
      if (initObj.hasOwnProperty('structure')) {
        this.structure = initObj.structure
      }
      else {
        this.structure = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BehaviorRequest
    // Serialize message field [behavior_name]
    bufferOffset = _serializer.string(obj.behavior_name, buffer, bufferOffset);
    // Serialize message field [autonomy_level]
    bufferOffset = _serializer.uint8(obj.autonomy_level, buffer, bufferOffset);
    // Serialize message field [arg_keys]
    bufferOffset = _arraySerializer.string(obj.arg_keys, buffer, bufferOffset, null);
    // Serialize message field [arg_values]
    bufferOffset = _arraySerializer.string(obj.arg_values, buffer, bufferOffset, null);
    // Serialize message field [structure]
    // Serialize the length for message field [structure]
    bufferOffset = _serializer.uint32(obj.structure.length, buffer, bufferOffset);
    obj.structure.forEach((val) => {
      bufferOffset = Container.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BehaviorRequest
    let len;
    let data = new BehaviorRequest(null);
    // Deserialize message field [behavior_name]
    data.behavior_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [autonomy_level]
    data.autonomy_level = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [arg_keys]
    data.arg_keys = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [arg_values]
    data.arg_values = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [structure]
    // Deserialize array length for message field [structure]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.structure = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.structure[i] = Container.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.behavior_name.length;
    object.arg_keys.forEach((val) => {
      length += 4 + val.length;
    });
    object.arg_values.forEach((val) => {
      length += 4 + val.length;
    });
    object.structure.forEach((val) => {
      length += Container.getMessageSize(val);
    });
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'flexbe_msgs/BehaviorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b55949502d4c602376ee00a64d0d294';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string behavior_name
    
    uint8 autonomy_level
    string[] arg_keys
    string[] arg_values
    
    Container[] structure
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
    const resolved = new BehaviorRequest(null);
    if (msg.behavior_name !== undefined) {
      resolved.behavior_name = msg.behavior_name;
    }
    else {
      resolved.behavior_name = ''
    }

    if (msg.autonomy_level !== undefined) {
      resolved.autonomy_level = msg.autonomy_level;
    }
    else {
      resolved.autonomy_level = 0
    }

    if (msg.arg_keys !== undefined) {
      resolved.arg_keys = msg.arg_keys;
    }
    else {
      resolved.arg_keys = []
    }

    if (msg.arg_values !== undefined) {
      resolved.arg_values = msg.arg_values;
    }
    else {
      resolved.arg_values = []
    }

    if (msg.structure !== undefined) {
      resolved.structure = new Array(msg.structure.length);
      for (let i = 0; i < resolved.structure.length; ++i) {
        resolved.structure[i] = Container.Resolve(msg.structure[i]);
      }
    }
    else {
      resolved.structure = []
    }

    return resolved;
    }
};

module.exports = BehaviorRequest;
