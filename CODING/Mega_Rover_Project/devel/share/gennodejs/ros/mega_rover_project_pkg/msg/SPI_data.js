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

class SPI_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.SPI_send = null;
      this.SPI_get = null;
    }
    else {
      if (initObj.hasOwnProperty('SPI_send')) {
        this.SPI_send = initObj.SPI_send
      }
      else {
        this.SPI_send = '';
      }
      if (initObj.hasOwnProperty('SPI_get')) {
        this.SPI_get = initObj.SPI_get
      }
      else {
        this.SPI_get = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SPI_data
    // Serialize message field [SPI_send]
    bufferOffset = _serializer.string(obj.SPI_send, buffer, bufferOffset);
    // Serialize message field [SPI_get]
    bufferOffset = _serializer.string(obj.SPI_get, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SPI_data
    let len;
    let data = new SPI_data(null);
    // Deserialize message field [SPI_send]
    data.SPI_send = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [SPI_get]
    data.SPI_get = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.SPI_send.length;
    length += object.SPI_get.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mega_rover_project_pkg/SPI_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f9a45316a1e893b5b6f361387ec0a12';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string SPI_send
    string SPI_get
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SPI_data(null);
    if (msg.SPI_send !== undefined) {
      resolved.SPI_send = msg.SPI_send;
    }
    else {
      resolved.SPI_send = ''
    }

    if (msg.SPI_get !== undefined) {
      resolved.SPI_get = msg.SPI_get;
    }
    else {
      resolved.SPI_get = ''
    }

    return resolved;
    }
};

module.exports = SPI_data;
