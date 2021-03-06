// Generated by gencpp from file my_gazebo/ConveyorBeltState.msg
// DO NOT EDIT!


#ifndef MY_GAZEBO_MESSAGE_CONVEYORBELTSTATE_H
#define MY_GAZEBO_MESSAGE_CONVEYORBELTSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_gazebo
{
template <class ContainerAllocator>
struct ConveyorBeltState_
{
  typedef ConveyorBeltState_<ContainerAllocator> Type;

  ConveyorBeltState_()
    : power(0.0)  {
    }
  ConveyorBeltState_(const ContainerAllocator& _alloc)
    : power(0.0)  {
  (void)_alloc;
    }



   typedef double _power_type;
  _power_type power;





  typedef boost::shared_ptr< ::my_gazebo::ConveyorBeltState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_gazebo::ConveyorBeltState_<ContainerAllocator> const> ConstPtr;

}; // struct ConveyorBeltState_

typedef ::my_gazebo::ConveyorBeltState_<std::allocator<void> > ConveyorBeltState;

typedef boost::shared_ptr< ::my_gazebo::ConveyorBeltState > ConveyorBeltStatePtr;
typedef boost::shared_ptr< ::my_gazebo::ConveyorBeltState const> ConveyorBeltStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_gazebo::ConveyorBeltState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_gazebo::ConveyorBeltState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_gazebo::ConveyorBeltState_<ContainerAllocator1> & lhs, const ::my_gazebo::ConveyorBeltState_<ContainerAllocator2> & rhs)
{
  return lhs.power == rhs.power;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_gazebo::ConveyorBeltState_<ContainerAllocator1> & lhs, const ::my_gazebo::ConveyorBeltState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_gazebo

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::my_gazebo::ConveyorBeltState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_gazebo::ConveyorBeltState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_gazebo::ConveyorBeltState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_gazebo::ConveyorBeltState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_gazebo::ConveyorBeltState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_gazebo::ConveyorBeltState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_gazebo::ConveyorBeltState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b61bda1d4e0075084b2082bebb59ea34";
  }

  static const char* value(const ::my_gazebo::ConveyorBeltState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb61bda1d4e007508ULL;
  static const uint64_t static_value2 = 0x4b2082bebb59ea34ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_gazebo::ConveyorBeltState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_gazebo/ConveyorBeltState";
  }

  static const char* value(const ::my_gazebo::ConveyorBeltState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_gazebo::ConveyorBeltState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Conveyor belt state message\n"
"float64 power    # power of the belt (percentage, in +Y direction of belt frame)\n"
;
  }

  static const char* value(const ::my_gazebo::ConveyorBeltState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_gazebo::ConveyorBeltState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.power);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ConveyorBeltState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_gazebo::ConveyorBeltState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_gazebo::ConveyorBeltState_<ContainerAllocator>& v)
  {
    s << indent << "power: ";
    Printer<double>::stream(s, indent + "  ", v.power);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_GAZEBO_MESSAGE_CONVEYORBELTSTATE_H
