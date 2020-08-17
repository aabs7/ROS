// Auto-generated. Do not edit!

// (in-package hrwros_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ConvertMetersToFeetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.measurement_meters = null;
    }
    else {
      if (initObj.hasOwnProperty('measurement_meters')) {
        this.measurement_meters = initObj.measurement_meters
      }
      else {
        this.measurement_meters = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConvertMetersToFeetRequest
    // Serialize message field [measurement_meters]
    bufferOffset = _serializer.float64(obj.measurement_meters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConvertMetersToFeetRequest
    let len;
    let data = new ConvertMetersToFeetRequest(null);
    // Deserialize message field [measurement_meters]
    data.measurement_meters = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hrwros_msgs/ConvertMetersToFeetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '233a71c3d9ce741eb27d4a8459bfbe49';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 measurement_meters # Request field
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConvertMetersToFeetRequest(null);
    if (msg.measurement_meters !== undefined) {
      resolved.measurement_meters = msg.measurement_meters;
    }
    else {
      resolved.measurement_meters = 0.0
    }

    return resolved;
    }
};

class ConvertMetersToFeetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.measurement_feet = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('measurement_feet')) {
        this.measurement_feet = initObj.measurement_feet
      }
      else {
        this.measurement_feet = 0.0;
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConvertMetersToFeetResponse
    // Serialize message field [measurement_feet]
    bufferOffset = _serializer.float64(obj.measurement_feet, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConvertMetersToFeetResponse
    let len;
    let data = new ConvertMetersToFeetResponse(null);
    // Deserialize message field [measurement_feet]
    data.measurement_feet = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hrwros_msgs/ConvertMetersToFeetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0e0416bc97b432dc446977a012d0589e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 measurement_feet   # Response field
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConvertMetersToFeetResponse(null);
    if (msg.measurement_feet !== undefined) {
      resolved.measurement_feet = msg.measurement_feet;
    }
    else {
      resolved.measurement_feet = 0.0
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ConvertMetersToFeetRequest,
  Response: ConvertMetersToFeetResponse,
  md5sum() { return 'd1036d55dafbbfcc5e557511312e2fdf'; },
  datatype() { return 'hrwros_msgs/ConvertMetersToFeet'; }
};
