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

class Container {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path = null;
      this.children = null;
      this.outcomes = null;
      this.transitions = null;
      this.autonomy = null;
    }
    else {
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = '';
      }
      if (initObj.hasOwnProperty('children')) {
        this.children = initObj.children
      }
      else {
        this.children = [];
      }
      if (initObj.hasOwnProperty('outcomes')) {
        this.outcomes = initObj.outcomes
      }
      else {
        this.outcomes = [];
      }
      if (initObj.hasOwnProperty('transitions')) {
        this.transitions = initObj.transitions
      }
      else {
        this.transitions = [];
      }
      if (initObj.hasOwnProperty('autonomy')) {
        this.autonomy = initObj.autonomy
      }
      else {
        this.autonomy = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Container
    // Serialize message field [path]
    bufferOffset = _serializer.string(obj.path, buffer, bufferOffset);
    // Serialize message field [children]
    bufferOffset = _arraySerializer.string(obj.children, buffer, bufferOffset, null);
    // Serialize message field [outcomes]
    bufferOffset = _arraySerializer.string(obj.outcomes, buffer, bufferOffset, null);
    // Serialize message field [transitions]
    bufferOffset = _arraySerializer.string(obj.transitions, buffer, bufferOffset, null);
    // Serialize message field [autonomy]
    bufferOffset = _arraySerializer.byte(obj.autonomy, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Container
    let len;
    let data = new Container(null);
    // Deserialize message field [path]
    data.path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [children]
    data.children = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [outcomes]
    data.outcomes = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [transitions]
    data.transitions = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [autonomy]
    data.autonomy = _arrayDeserializer.byte(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.path.length;
    object.children.forEach((val) => {
      length += 4 + val.length;
    });
    object.outcomes.forEach((val) => {
      length += 4 + val.length;
    });
    object.transitions.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.autonomy.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'flexbe_msgs/Container';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '627eacc0f462c8ee83d7105e17cf4119';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Container(null);
    if (msg.path !== undefined) {
      resolved.path = msg.path;
    }
    else {
      resolved.path = ''
    }

    if (msg.children !== undefined) {
      resolved.children = msg.children;
    }
    else {
      resolved.children = []
    }

    if (msg.outcomes !== undefined) {
      resolved.outcomes = msg.outcomes;
    }
    else {
      resolved.outcomes = []
    }

    if (msg.transitions !== undefined) {
      resolved.transitions = msg.transitions;
    }
    else {
      resolved.transitions = []
    }

    if (msg.autonomy !== undefined) {
      resolved.autonomy = msg.autonomy;
    }
    else {
      resolved.autonomy = []
    }

    return resolved;
    }
};

module.exports = Container;
