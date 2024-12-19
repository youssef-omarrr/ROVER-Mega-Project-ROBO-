// Auto-generated. Do not edit!

// (in-package mega_rover_project_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class controller {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.swim = null;
      this.fly = null;
      this.shoot = null;
      this.L3X = null;
      this.L3Y = null;
      this.R3X = null;
      this.R3Y = null;
    }
    else {
      if (initObj.hasOwnProperty('swim')) {
        this.swim = initObj.swim
      }
      else {
        this.swim = 0;
      }
      if (initObj.hasOwnProperty('fly')) {
        this.fly = initObj.fly
      }
      else {
        this.fly = 0;
      }
      if (initObj.hasOwnProperty('shoot')) {
        this.shoot = initObj.shoot
      }
      else {
        this.shoot = 0;
      }
      if (initObj.hasOwnProperty('L3X')) {
        this.L3X = initObj.L3X
      }
      else {
        this.L3X = 0.0;
      }
      if (initObj.hasOwnProperty('L3Y')) {
        this.L3Y = initObj.L3Y
      }
      else {
        this.L3Y = 0.0;
      }
      if (initObj.hasOwnProperty('R3X')) {
        this.R3X = initObj.R3X
      }
      else {
        this.R3X = 0.0;
      }
      if (initObj.hasOwnProperty('R3Y')) {
        this.R3Y = initObj.R3Y
      }
      else {
        this.R3Y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type controller
    // Serialize message field [swim]
    bufferOffset = _serializer.int32(obj.swim, buffer, bufferOffset);
    // Serialize message field [fly]
    bufferOffset = _serializer.int32(obj.fly, buffer, bufferOffset);
    // Serialize message field [shoot]
    bufferOffset = _serializer.int32(obj.shoot, buffer, bufferOffset);
    // Serialize message field [L3X]
    bufferOffset = _serializer.float64(obj.L3X, buffer, bufferOffset);
    // Serialize message field [L3Y]
    bufferOffset = _serializer.float64(obj.L3Y, buffer, bufferOffset);
    // Serialize message field [R3X]
    bufferOffset = _serializer.float64(obj.R3X, buffer, bufferOffset);
    // Serialize message field [R3Y]
    bufferOffset = _serializer.float64(obj.R3Y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type controller
    let len;
    let data = new controller(null);
    // Deserialize message field [swim]
    data.swim = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fly]
    data.fly = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [shoot]
    data.shoot = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [L3X]
    data.L3X = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [L3Y]
    data.L3Y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [R3X]
    data.R3X = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [R3Y]
    data.R3Y = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mega_rover_project_pkg/controller';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23a2b0ddfb78ba3b65d96a5b10f39992';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 swim
    int32 fly
    int32 shoot
    float64 L3X
    float64 L3Y
    float64 R3X
    float64 R3Y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new controller(null);
    if (msg.swim !== undefined) {
      resolved.swim = msg.swim;
    }
    else {
      resolved.swim = 0
    }

    if (msg.fly !== undefined) {
      resolved.fly = msg.fly;
    }
    else {
      resolved.fly = 0
    }

    if (msg.shoot !== undefined) {
      resolved.shoot = msg.shoot;
    }
    else {
      resolved.shoot = 0
    }

    if (msg.L3X !== undefined) {
      resolved.L3X = msg.L3X;
    }
    else {
      resolved.L3X = 0.0
    }

    if (msg.L3Y !== undefined) {
      resolved.L3Y = msg.L3Y;
    }
    else {
      resolved.L3Y = 0.0
    }

    if (msg.R3X !== undefined) {
      resolved.R3X = msg.R3X;
    }
    else {
      resolved.R3X = 0.0
    }

    if (msg.R3Y !== undefined) {
      resolved.R3Y = msg.R3Y;
    }
    else {
      resolved.R3Y = 0.0
    }

    return resolved;
    }
};

module.exports = controller;
