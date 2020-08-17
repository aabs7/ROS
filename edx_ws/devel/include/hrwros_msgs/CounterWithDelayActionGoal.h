// Generated by gencpp from file hrwros_msgs/CounterWithDelayActionGoal.msg
// DO NOT EDIT!


#ifndef HRWROS_MSGS_MESSAGE_COUNTERWITHDELAYACTIONGOAL_H
#define HRWROS_MSGS_MESSAGE_COUNTERWITHDELAYACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <hrwros_msgs/CounterWithDelayGoal.h>

namespace hrwros_msgs
{
template <class ContainerAllocator>
struct CounterWithDelayActionGoal_
{
  typedef CounterWithDelayActionGoal_<ContainerAllocator> Type;

  CounterWithDelayActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  CounterWithDelayActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::hrwros_msgs::CounterWithDelayGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct CounterWithDelayActionGoal_

typedef ::hrwros_msgs::CounterWithDelayActionGoal_<std::allocator<void> > CounterWithDelayActionGoal;

typedef boost::shared_ptr< ::hrwros_msgs::CounterWithDelayActionGoal > CounterWithDelayActionGoalPtr;
typedef boost::shared_ptr< ::hrwros_msgs::CounterWithDelayActionGoal const> CounterWithDelayActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator1> & lhs, const ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_id == rhs.goal_id &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator1> & lhs, const ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hrwros_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "57b68b21bf4d2902d5a4566c974876d6";
  }

  static const char* value(const ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x57b68b21bf4d2902ULL;
  static const uint64_t static_value2 = 0xd5a4566c974876d6ULL;
};

template<class ContainerAllocator>
struct DataType< ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hrwros_msgs/CounterWithDelayActionGoal";
  }

  static const char* value(const ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"CounterWithDelayGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: hrwros_msgs/CounterWithDelayGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"uint32 num_counts     # Goal field\n"
;
  }

  static const char* value(const ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CounterWithDelayActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hrwros_msgs::CounterWithDelayActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::hrwros_msgs::CounterWithDelayGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HRWROS_MSGS_MESSAGE_COUNTERWITHDELAYACTIONGOAL_H
