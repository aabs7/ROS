// Generated by gencpp from file hrwros_msgs/ConvertMetersToFeet.msg
// DO NOT EDIT!


#ifndef HRWROS_MSGS_MESSAGE_CONVERTMETERSTOFEET_H
#define HRWROS_MSGS_MESSAGE_CONVERTMETERSTOFEET_H

#include <ros/service_traits.h>


#include <hrwros_msgs/ConvertMetersToFeetRequest.h>
#include <hrwros_msgs/ConvertMetersToFeetResponse.h>


namespace hrwros_msgs
{

struct ConvertMetersToFeet
{

typedef ConvertMetersToFeetRequest Request;
typedef ConvertMetersToFeetResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ConvertMetersToFeet
} // namespace hrwros_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hrwros_msgs::ConvertMetersToFeet > {
  static const char* value()
  {
    return "d1036d55dafbbfcc5e557511312e2fdf";
  }

  static const char* value(const ::hrwros_msgs::ConvertMetersToFeet&) { return value(); }
};

template<>
struct DataType< ::hrwros_msgs::ConvertMetersToFeet > {
  static const char* value()
  {
    return "hrwros_msgs/ConvertMetersToFeet";
  }

  static const char* value(const ::hrwros_msgs::ConvertMetersToFeet&) { return value(); }
};


// service_traits::MD5Sum< ::hrwros_msgs::ConvertMetersToFeetRequest> should match
// service_traits::MD5Sum< ::hrwros_msgs::ConvertMetersToFeet >
template<>
struct MD5Sum< ::hrwros_msgs::ConvertMetersToFeetRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hrwros_msgs::ConvertMetersToFeet >::value();
  }
  static const char* value(const ::hrwros_msgs::ConvertMetersToFeetRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hrwros_msgs::ConvertMetersToFeetRequest> should match
// service_traits::DataType< ::hrwros_msgs::ConvertMetersToFeet >
template<>
struct DataType< ::hrwros_msgs::ConvertMetersToFeetRequest>
{
  static const char* value()
  {
    return DataType< ::hrwros_msgs::ConvertMetersToFeet >::value();
  }
  static const char* value(const ::hrwros_msgs::ConvertMetersToFeetRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hrwros_msgs::ConvertMetersToFeetResponse> should match
// service_traits::MD5Sum< ::hrwros_msgs::ConvertMetersToFeet >
template<>
struct MD5Sum< ::hrwros_msgs::ConvertMetersToFeetResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hrwros_msgs::ConvertMetersToFeet >::value();
  }
  static const char* value(const ::hrwros_msgs::ConvertMetersToFeetResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hrwros_msgs::ConvertMetersToFeetResponse> should match
// service_traits::DataType< ::hrwros_msgs::ConvertMetersToFeet >
template<>
struct DataType< ::hrwros_msgs::ConvertMetersToFeetResponse>
{
  static const char* value()
  {
    return DataType< ::hrwros_msgs::ConvertMetersToFeet >::value();
  }
  static const char* value(const ::hrwros_msgs::ConvertMetersToFeetResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HRWROS_MSGS_MESSAGE_CONVERTMETERSTOFEET_H
