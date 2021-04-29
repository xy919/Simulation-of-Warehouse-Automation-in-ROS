// Auto-generated. Do not edit!

// (in-package flexbe_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let OutcomeCondition = require('./OutcomeCondition.js');

//-----------------------------------------------------------

class StateInstantiation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state_path = null;
      this.state_class = null;
      this.initial_state_name = null;
      this.input_keys = null;
      this.output_keys = null;
      this.cond_outcome = null;
      this.cond_transition = null;
      this.behavior_class = null;
      this.parameter_names = null;
      this.parameter_values = null;
      this.position = null;
      this.outcomes = null;
      this.transitions = null;
      this.autonomy = null;
      this.userdata_keys = null;
      this.userdata_remapping = null;
    }
    else {
      if (initObj.hasOwnProperty('state_path')) {
        this.state_path = initObj.state_path
      }
      else {
        this.state_path = '';
      }
      if (initObj.hasOwnProperty('state_class')) {
        this.state_class = initObj.state_class
      }
      else {
        this.state_class = '';
      }
      if (initObj.hasOwnProperty('initial_state_name')) {
        this.initial_state_name = initObj.initial_state_name
      }
      else {
        this.initial_state_name = '';
      }
      if (initObj.hasOwnProperty('input_keys')) {
        this.input_keys = initObj.input_keys
      }
      else {
        this.input_keys = [];
      }
      if (initObj.hasOwnProperty('output_keys')) {
        this.output_keys = initObj.output_keys
      }
      else {
        this.output_keys = [];
      }
      if (initObj.hasOwnProperty('cond_outcome')) {
        this.cond_outcome = initObj.cond_outcome
      }
      else {
        this.cond_outcome = [];
      }
      if (initObj.hasOwnProperty('cond_transition')) {
        this.cond_transition = initObj.cond_transition
      }
      else {
        this.cond_transition = [];
      }
      if (initObj.hasOwnProperty('behavior_class')) {
        this.behavior_class = initObj.behavior_class
      }
      else {
        this.behavior_class = '';
      }
      if (initObj.hasOwnProperty('parameter_names')) {
        this.parameter_names = initObj.parameter_names
      }
      else {
        this.parameter_names = [];
      }
      if (initObj.hasOwnProperty('parameter_values')) {
        this.parameter_values = initObj.parameter_values
      }
      else {
        this.parameter_values = [];
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Array(2).fill(0);
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
      if (initObj.hasOwnProperty('userdata_keys')) {
        this.userdata_keys = initObj.userdata_keys
      }
      else {
        this.userdata_keys = [];
      }
      if (initObj.hasOwnProperty('userdata_remapping')) {
        this.userdata_remapping = initObj.userdata_remapping
      }
      else {
        this.userdata_remapping = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StateInstantiation
    // Serialize message field [state_path]
    bufferOffset = _serializer.string(obj.state_path, buffer, bufferOffset);
    // Serialize message field [state_class]
    bufferOffset = _serializer.string(obj.state_class, buffer, bufferOffset);
    // Serialize message field [initial_state_name]
    bufferOffset = _serializer.string(obj.initial_state_name, buffer, bufferOffset);
    // Serialize message field [input_keys]
    bufferOffset = _arraySerializer.string(obj.input_keys, buffer, bufferOffset, null);
    // Serialize message field [output_keys]
    bufferOffset = _arraySerializer.string(obj.output_keys, buffer, bufferOffset, null);
    // Serialize message field [cond_outcome]
    bufferOffset = _arraySerializer.string(obj.cond_outcome, buffer, bufferOffset, null);
    // Serialize message field [cond_transition]
    // Serialize the length for message field [cond_transition]
    bufferOffset = _serializer.uint32(obj.cond_transition.length, buffer, bufferOffset);
    obj.cond_transition.forEach((val) => {
      bufferOffset = OutcomeCondition.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [behavior_class]
    bufferOffset = _serializer.string(obj.behavior_class, buffer, bufferOffset);
    // Serialize message field [parameter_names]
    bufferOffset = _arraySerializer.string(obj.parameter_names, buffer, bufferOffset, null);
    // Serialize message field [parameter_values]
    bufferOffset = _arraySerializer.string(obj.parameter_values, buffer, bufferOffset, null);
    // Check that the constant length array field [position] has the right length
    if (obj.position.length !== 2) {
      throw new Error('Unable to serialize array field position - length must be 2')
    }
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float32(obj.position, buffer, bufferOffset, 2);
    // Serialize message field [outcomes]
    bufferOffset = _arraySerializer.string(obj.outcomes, buffer, bufferOffset, null);
    // Serialize message field [transitions]
    bufferOffset = _arraySerializer.string(obj.transitions, buffer, bufferOffset, null);
    // Serialize message field [autonomy]
    bufferOffset = _arraySerializer.int8(obj.autonomy, buffer, bufferOffset, null);
    // Serialize message field [userdata_keys]
    bufferOffset = _arraySerializer.string(obj.userdata_keys, buffer, bufferOffset, null);
    // Serialize message field [userdata_remapping]
    bufferOffset = _arraySerializer.string(obj.userdata_remapping, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StateInstantiation
    let len;
    let data = new StateInstantiation(null);
    // Deserialize message field [state_path]
    data.state_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state_class]
    data.state_class = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [initial_state_name]
    data.initial_state_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [input_keys]
    data.input_keys = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [output_keys]
    data.output_keys = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [cond_outcome]
    data.cond_outcome = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [cond_transition]
    // Deserialize array length for message field [cond_transition]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cond_transition = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cond_transition[i] = OutcomeCondition.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [behavior_class]
    data.behavior_class = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [parameter_names]
    data.parameter_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [parameter_values]
    data.parameter_values = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [outcomes]
    data.outcomes = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [transitions]
    data.transitions = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [autonomy]
    data.autonomy = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [userdata_keys]
    data.userdata_keys = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [userdata_remapping]
    data.userdata_remapping = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.state_path.length;
    length += object.state_class.length;
    length += object.initial_state_name.length;
    object.input_keys.forEach((val) => {
      length += 4 + val.length;
    });
    object.output_keys.forEach((val) => {
      length += 4 + val.length;
    });
    object.cond_outcome.forEach((val) => {
      length += 4 + val.length;
    });
    object.cond_transition.forEach((val) => {
      length += OutcomeCondition.getMessageSize(val);
    });
    length += object.behavior_class.length;
    object.parameter_names.forEach((val) => {
      length += 4 + val.length;
    });
    object.parameter_values.forEach((val) => {
      length += 4 + val.length;
    });
    object.outcomes.forEach((val) => {
      length += 4 + val.length;
    });
    object.transitions.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.autonomy.length;
    object.userdata_keys.forEach((val) => {
      length += 4 + val.length;
    });
    object.userdata_remapping.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'flexbe_msgs/StateInstantiation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c6026e288cfff7ab6c8308ee1db66f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Describes a single instantiation of a state
    
    # Path of this state inside the behavior
    # Last segment of the path is the name of this state
    # e.g. "/Inner_Statemachine/This_State"
    string state_path
    
    # Specifies the class implementing this state
    # Use one of the provided CLASS constants if this is not a primitive state
    # e.g. "CalculationState"
    string CLASS_STATEMACHINE 	= :STATEMACHINE
    string CLASS_CONCURRENCY 	= :CONCURRENCY
    string CLASS_PRIORITY 		= :PRIORITY
    string CLASS_BEHAVIOR 		= :BEHAVIOR
    string state_class
    
    
    
    # Only relevant for state machine, priority, and concurrency
    # Name of the initial state / state to be monitored
    string initial_state_name
    # Input and output keys (can be remapped below)
    string[] input_keys
    string[] output_keys
    
    # Only relevant for concurrency
    # Outcome conditions
    string[] cond_outcome
    OutcomeCondition[] cond_transition
    
    # Only relevant for behavior
    # Name of the class implementing this state
    string behavior_class
    
    # Only relevant for primitive state
    # List of parameter names and values of this state
    # Order of names and values has to match
    string[] parameter_names
    string[] parameter_values
    
    
    
    # Position of this state in the editor [x,y]
    float32[2] position
    
    # Outcomes of this state
    # Defines the order of the lists: transitions, autonomy
    string[] outcomes
    # Transition targets (state names or container outcomes) of the outcomes
    string[] transitions
    # Required autonomy level of the outcomes
    int8[] autonomy
    
    # Userdata of this state
    # Merges own input_keys and output_keys, no duplicates
    string[] userdata_keys
    # Remapping of the corresponding own key (= key used by container)
    string[] userdata_remapping
    ================================================================================
    MSG: flexbe_msgs/OutcomeCondition
    # Defines a conjunction of required state outcomes in order to return a concurrency outcome
    string[] state_name
    string[] state_outcome
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StateInstantiation(null);
    if (msg.state_path !== undefined) {
      resolved.state_path = msg.state_path;
    }
    else {
      resolved.state_path = ''
    }

    if (msg.state_class !== undefined) {
      resolved.state_class = msg.state_class;
    }
    else {
      resolved.state_class = ''
    }

    if (msg.initial_state_name !== undefined) {
      resolved.initial_state_name = msg.initial_state_name;
    }
    else {
      resolved.initial_state_name = ''
    }

    if (msg.input_keys !== undefined) {
      resolved.input_keys = msg.input_keys;
    }
    else {
      resolved.input_keys = []
    }

    if (msg.output_keys !== undefined) {
      resolved.output_keys = msg.output_keys;
    }
    else {
      resolved.output_keys = []
    }

    if (msg.cond_outcome !== undefined) {
      resolved.cond_outcome = msg.cond_outcome;
    }
    else {
      resolved.cond_outcome = []
    }

    if (msg.cond_transition !== undefined) {
      resolved.cond_transition = new Array(msg.cond_transition.length);
      for (let i = 0; i < resolved.cond_transition.length; ++i) {
        resolved.cond_transition[i] = OutcomeCondition.Resolve(msg.cond_transition[i]);
      }
    }
    else {
      resolved.cond_transition = []
    }

    if (msg.behavior_class !== undefined) {
      resolved.behavior_class = msg.behavior_class;
    }
    else {
      resolved.behavior_class = ''
    }

    if (msg.parameter_names !== undefined) {
      resolved.parameter_names = msg.parameter_names;
    }
    else {
      resolved.parameter_names = []
    }

    if (msg.parameter_values !== undefined) {
      resolved.parameter_values = msg.parameter_values;
    }
    else {
      resolved.parameter_values = []
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = new Array(2).fill(0)
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

    if (msg.userdata_keys !== undefined) {
      resolved.userdata_keys = msg.userdata_keys;
    }
    else {
      resolved.userdata_keys = []
    }

    if (msg.userdata_remapping !== undefined) {
      resolved.userdata_remapping = msg.userdata_remapping;
    }
    else {
      resolved.userdata_remapping = []
    }

    return resolved;
    }
};

// Constants for message
StateInstantiation.Constants = {
  CLASS_STATEMACHINE: ':STATEMACHINE',
  CLASS_CONCURRENCY: ':CONCURRENCY',
  CLASS_PRIORITY: ':PRIORITY',
  CLASS_BEHAVIOR: ':BEHAVIOR',
}

module.exports = StateInstantiation;
