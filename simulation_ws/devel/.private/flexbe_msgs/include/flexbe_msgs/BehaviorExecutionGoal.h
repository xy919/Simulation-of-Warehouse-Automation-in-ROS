// Generated by gencpp from file flexbe_msgs/BehaviorExecutionGoal.msg
// DO NOT EDIT!


#ifndef FLEXBE_MSGS_MESSAGE_BEHAVIOREXECUTIONGOAL_H
#define FLEXBE_MSGS_MESSAGE_BEHAVIOREXECUTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace flexbe_msgs
{
template <class ContainerAllocator>
struct BehaviorExecutionGoal_
{
  typedef BehaviorExecutionGoal_<ContainerAllocator> Type;

  BehaviorExecutionGoal_()
    : behavior_name()
    , arg_keys()
    , arg_values()
    , input_keys()
    , input_values()  {
    }
  BehaviorExecutionGoal_(const ContainerAllocator& _alloc)
    : behavior_name(_alloc)
    , arg_keys(_alloc)
    , arg_values(_alloc)
    , input_keys(_alloc)
    , input_values(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _behavior_name_type;
  _behavior_name_type behavior_name;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _arg_keys_type;
  _arg_keys_type arg_keys;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _arg_values_type;
  _arg_values_type arg_values;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _input_keys_type;
  _input_keys_type input_keys;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _input_values_type;
  _input_values_type input_values;





  typedef boost::shared_ptr< ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct BehaviorExecutionGoal_

typedef ::flexbe_msgs::BehaviorExecutionGoal_<std::allocator<void> > BehaviorExecutionGoal;

typedef boost::shared_ptr< ::flexbe_msgs::BehaviorExecutionGoal > BehaviorExecutionGoalPtr;
typedef boost::shared_ptr< ::flexbe_msgs::BehaviorExecutionGoal const> BehaviorExecutionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator1> & lhs, const ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.behavior_name == rhs.behavior_name &&
    lhs.arg_keys == rhs.arg_keys &&
    lhs.arg_values == rhs.arg_values &&
    lhs.input_keys == rhs.input_keys &&
    lhs.input_values == rhs.input_values;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator1> & lhs, const ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace flexbe_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "448c2298fe3c13b6fd73cfc07e865a14";
  }

  static const char* value(const ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x448c2298fe3c13b6ULL;
  static const uint64_t static_value2 = 0xfd73cfc07e865a14ULL;
};

template<class ContainerAllocator>
struct DataType< ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "flexbe_msgs/BehaviorExecutionGoal";
  }

  static const char* value(const ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Commands the execution of any behavior.\n"
"\n"
"# name of the behavior to be executed\n"
"string behavior_name\n"
"\n"
"# optional list of behavior parameters\n"
"string[] arg_keys\n"
"string[] arg_values\n"
"\n"
"# optional list of initial userdata\n"
"string[] input_keys\n"
"string[] input_values\n"
"\n"
;
  }

  static const char* value(const ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.behavior_name);
      stream.next(m.arg_keys);
      stream.next(m.arg_values);
      stream.next(m.input_keys);
      stream.next(m.input_values);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BehaviorExecutionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::flexbe_msgs::BehaviorExecutionGoal_<ContainerAllocator>& v)
  {
    s << indent << "behavior_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.behavior_name);
    s << indent << "arg_keys[]" << std::endl;
    for (size_t i = 0; i < v.arg_keys.size(); ++i)
    {
      s << indent << "  arg_keys[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.arg_keys[i]);
    }
    s << indent << "arg_values[]" << std::endl;
    for (size_t i = 0; i < v.arg_values.size(); ++i)
    {
      s << indent << "  arg_values[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.arg_values[i]);
    }
    s << indent << "input_keys[]" << std::endl;
    for (size_t i = 0; i < v.input_keys.size(); ++i)
    {
      s << indent << "  input_keys[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.input_keys[i]);
    }
    s << indent << "input_values[]" << std::endl;
    for (size_t i = 0; i < v.input_values.size(); ++i)
    {
      s << indent << "  input_values[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.input_values[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // FLEXBE_MSGS_MESSAGE_BEHAVIOREXECUTIONGOAL_H
