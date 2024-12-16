// Auto-generated. Do not edit!

// (in-package mega_rover_project_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetDataGUIRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ROVER_data = null;
    }
    else {
      if (initObj.hasOwnProperty('ROVER_data')) {
        this.ROVER_data = initObj.ROVER_data
      }
      else {
        this.ROVER_data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDataGUIRequest
    // Serialize message field [ROVER_data]
    bufferOffset = _serializer.string(obj.ROVER_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDataGUIRequest
    let len;
    let data = new GetDataGUIRequest(null);
    // Deserialize message field [ROVER_data]
    data.ROVER_data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ROVER_data.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mega_rover_project_pkg/GetDataGUIRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6669aaaf1b979d4f2e8862378568785c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request msg
    string ROVER_data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDataGUIRequest(null);
    if (msg.ROVER_data !== undefined) {
      resolved.ROVER_data = msg.ROVER_data;
    }
    else {
      resolved.ROVER_data = ''
    }

    return resolved;
    }
};

class GetDataGUIResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.GUI_data = null;
    }
    else {
      if (initObj.hasOwnProperty('GUI_data')) {
        this.GUI_data = initObj.GUI_data
      }
      else {
        this.GUI_data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDataGUIResponse
    // Serialize message field [GUI_data]
    bufferOffset = _serializer.string(obj.GUI_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDataGUIResponse
    let len;
    let data = new GetDataGUIResponse(null);
    // Deserialize message field [GUI_data]
    data.GUI_data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.GUI_data.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mega_rover_project_pkg/GetDataGUIResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f79edd8dd4fdf838303866de41b7e5d3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response msg
    string GUI_data
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDataGUIResponse(null);
    if (msg.GUI_data !== undefined) {
      resolved.GUI_data = msg.GUI_data;
    }
    else {
      resolved.GUI_data = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetDataGUIRequest,
  Response: GetDataGUIResponse,
  md5sum() { return 'a4d6ac979e18ace79722eb73f934d137'; },
  datatype() { return 'mega_rover_project_pkg/GetDataGUI'; }
};
