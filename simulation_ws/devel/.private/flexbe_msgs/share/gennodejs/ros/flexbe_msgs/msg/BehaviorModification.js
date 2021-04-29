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

class BehaviorModification {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index_begin = null;
      this.index_end = null;
      this.new_content = null;
    }
    else {
      if (initObj.hasOwnProperty('index_begin')) {
        this.index_begin = initObj.index_begin
      }
      else {
        this.index_begin = 0;
      }
      if (initObj.hasOwnProperty('index_end')) {
        this.index_end = initObj.index_end
      }
      else {
        this.index_end = 0;
      }
      if (initObj.hasOwnProperty('new_content')) {
        this.new_content = initObj.new_content
      }
      else {
        this.new_content = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BehaviorModification
    // Serialize message field [index_begin]
    bufferOffset = _serializer.int32(obj.index_begin, buffer, bufferOffset);
    // Serialize message field [index_end]
    bufferOffset = _serializer.int32(obj.index_end, buffer, bufferOffset);
    // Serialize message field [new_content]
    bufferOffset = _serializer.string(obj.new_content, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BehaviorModification
    let len;
    let data = new BehaviorModification(null);
    // Deserialize message field [index_begin]
    data.index_begin = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [index_end]
    data.index_end = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [new_content]
    data.new_content = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.new_content.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'flexbe_msgs/BehaviorModification';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ac997193d826b145a432b8e3e528f6b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new BehaviorModification(null);
    if (msg.index_begin !== undefined) {
      resolved.index_begin = msg.index_begin;
    }
    else {
      resolved.index_begin = 0
    }

    if (msg.index_end !== undefined) {
      resolved.index_end = msg.index_end;
    }
    else {
      resolved.index_end = 0
    }

    if (msg.new_content !== undefined) {
      resolved.new_content = msg.new_content;
    }
    else {
      resolved.new_content = ''
    }

    return resolved;
    }
};

module.exports = BehaviorModification;
