// Auto-generated. Do not edit!

// (in-package flexbe_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BehaviorModification = require('./BehaviorModification.js');

//-----------------------------------------------------------

class BehaviorSelection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.behavior_id = null;
      this.behavior_checksum = null;
      this.autonomy_level = null;
      this.arg_keys = null;
      this.arg_values = null;
      this.input_keys = null;
      this.input_values = null;
      this.modifications = null;
    }
    else {
      if (initObj.hasOwnProperty('behavior_id')) {
        this.behavior_id = initObj.behavior_id
      }
      else {
        this.behavior_id = 0;
      }
      if (initObj.hasOwnProperty('behavior_checksum')) {
        this.behavior_checksum = initObj.behavior_checksum
      }
      else {
        this.behavior_checksum = 0;
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
      if (initObj.hasOwnProperty('input_keys')) {
        this.input_keys = initObj.input_keys
      }
      else {
        this.input_keys = [];
      }
      if (initObj.hasOwnProperty('input_values')) {
        this.input_values = initObj.input_values
      }
      else {
        this.input_values = [];
      }
      if (initObj.hasOwnProperty('modifications')) {
        this.modifications = initObj.modifications
      }
      else {
        this.modifications = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BehaviorSelection
    // Serialize message field [behavior_id]
    bufferOffset = _serializer.int32(obj.behavior_id, buffer, bufferOffset);
    // Serialize message field [behavior_checksum]
    bufferOffset = _serializer.int32(obj.behavior_checksum, buffer, bufferOffset);
    // Serialize message field [autonomy_level]
    bufferOffset = _serializer.uint8(obj.autonomy_level, buffer, bufferOffset);
    // Serialize message field [arg_keys]
    bufferOffset = _arraySerializer.string(obj.arg_keys, buffer, bufferOffset, null);
    // Serialize message field [arg_values]
    bufferOffset = _arraySerializer.string(obj.arg_values, buffer, bufferOffset, null);
    // Serialize message field [input_keys]
    bufferOffset = _arraySerializer.string(obj.input_keys, buffer, bufferOffset, null);
    // Serialize message field [input_values]
    bufferOffset = _arraySerializer.string(obj.input_values, buffer, bufferOffset, null);
    // Serialize message field [modifications]
    // Serialize the length for message field [modifications]
    bufferOffset = _serializer.uint32(obj.modifications.length, buffer, bufferOffset);
    obj.modifications.forEach((val) => {
      bufferOffset = BehaviorModification.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BehaviorSelection
    let len;
    let data = new BehaviorSelection(null);
    // Deserialize message field [behavior_id]
    data.behavior_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [behavior_checksum]
    data.behavior_checksum = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [autonomy_level]
    data.autonomy_level = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [arg_keys]
    data.arg_keys = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [arg_values]
    data.arg_values = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [input_keys]
    data.input_keys = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [input_values]
    data.input_values = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [modifications]
    // Deserialize array length for message field [modifications]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.modifications = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.modifications[i] = BehaviorModification.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.arg_keys.forEach((val) => {
      length += 4 + val.length;
    });
    object.arg_values.forEach((val) => {
      length += 4 + val.length;
    });
    object.input_keys.forEach((val) => {
      length += 4 + val.length;
    });
    object.input_values.forEach((val) => {
      length += 4 + val.length;
    });
    object.modifications.forEach((val) => {
      length += BehaviorModification.getMessageSize(val);
    });
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'flexbe_msgs/BehaviorSelection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '514f1b101295bdbd417ee6cc46e3823c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 behavior_id
    int32 behavior_checksum
    
    uint8 autonomy_level
    string[] arg_keys
    string[] arg_values
    
    string[] input_keys
    string[] input_values
    
    flexbe_msgs/BehaviorModification[] modifications
    ================================================================================
    MSG: flexbe_msgs/BehaviorModification
    int32 index_begin
    int32 index_end
    string new_content
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BehaviorSelection(null);
    if (msg.behavior_id !== undefined) {
      resolved.behavior_id = msg.behavior_id;
    }
    else {
      resolved.behavior_id = 0
    }

    if (msg.behavior_checksum !== undefined) {
      resolved.behavior_checksum = msg.behavior_checksum;
    }
    else {
      resolved.behavior_checksum = 0
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

    if (msg.input_keys !== undefined) {
      resolved.input_keys = msg.input_keys;
    }
    else {
      resolved.input_keys = []
    }

    if (msg.input_values !== undefined) {
      resolved.input_values = msg.input_values;
    }
    else {
      resolved.input_values = []
    }

    if (msg.modifications !== undefined) {
      resolved.modifications = new Array(msg.modifications.length);
      for (let i = 0; i < resolved.modifications.length; ++i) {
        resolved.modifications[i] = BehaviorModification.Resolve(msg.modifications[i]);
      }
    }
    else {
      resolved.modifications = []
    }

    return resolved;
    }
};

module.exports = BehaviorSelection;
