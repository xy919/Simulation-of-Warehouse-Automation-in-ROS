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

class SynthesisRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.system = null;
      this.goal = null;
      this.initial_condition = null;
      this.sm_outcomes = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('system')) {
        this.system = initObj.system
      }
      else {
        this.system = '';
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = '';
      }
      if (initObj.hasOwnProperty('initial_condition')) {
        this.initial_condition = initObj.initial_condition
      }
      else {
        this.initial_condition = '';
      }
      if (initObj.hasOwnProperty('sm_outcomes')) {
        this.sm_outcomes = initObj.sm_outcomes
      }
      else {
        this.sm_outcomes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SynthesisRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [system]
    bufferOffset = _serializer.string(obj.system, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = _serializer.string(obj.goal, buffer, bufferOffset);
    // Serialize message field [initial_condition]
    bufferOffset = _serializer.string(obj.initial_condition, buffer, bufferOffset);
    // Serialize message field [sm_outcomes]
    bufferOffset = _arraySerializer.string(obj.sm_outcomes, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SynthesisRequest
    let len;
    let data = new SynthesisRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [system]
    data.system = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [initial_condition]
    data.initial_condition = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sm_outcomes]
    data.sm_outcomes = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.system.length;
    length += object.goal.length;
    length += object.initial_condition.length;
    object.sm_outcomes.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'flexbe_msgs/SynthesisRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99257dbfe8a196d006a75837dcabf3f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Minimal template for the request data provided by the FlexBE synthesis interface.
    # Either refer this message as 'request' in the goal part of your synthesis action
    # or implement your own by at least supporting the fields listed below.
    
    # Identifier of this synthesis query, can for example be used to set the name of the resulting state machine
    string name
    
    # Identifier of the system (i.e., configuration data set) to be used by the synthesis tool
    string system
    
    # Goal to be achieved by the synthesized behavior
    string goal
    
    # Initial conditions from which the synthesized behavior will start
    string initial_condition
    
    # Available outcomes of the generated state machine,
    # i.e., possible results of the synthesized behavior
    string[] sm_outcomes
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SynthesisRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.system !== undefined) {
      resolved.system = msg.system;
    }
    else {
      resolved.system = ''
    }

    if (msg.goal !== undefined) {
      resolved.goal = msg.goal;
    }
    else {
      resolved.goal = ''
    }

    if (msg.initial_condition !== undefined) {
      resolved.initial_condition = msg.initial_condition;
    }
    else {
      resolved.initial_condition = ''
    }

    if (msg.sm_outcomes !== undefined) {
      resolved.sm_outcomes = msg.sm_outcomes;
    }
    else {
      resolved.sm_outcomes = []
    }

    return resolved;
    }
};

module.exports = SynthesisRequest;
