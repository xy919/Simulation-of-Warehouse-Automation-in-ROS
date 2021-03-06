// Generated by gencpp from file final_project/TrajectoryRequest.msg
// DO NOT EDIT!


#ifndef FINAL_PROJECT_MESSAGE_TRAJECTORYREQUEST_H
#define FINAL_PROJECT_MESSAGE_TRAJECTORYREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>
#include <geometry_msgs/Point.h>
#include <nav_msgs/OccupancyGrid.h>
#include <std_msgs/Bool.h>
#include <nav_msgs/OccupancyGrid.h>

namespace final_project
{
template <class ContainerAllocator>
struct TrajectoryRequest_
{
  typedef TrajectoryRequest_<ContainerAllocator> Type;

  TrajectoryRequest_()
    : initPos()
    , goalPos()
    , map()
    , processCostMap()
    , costMap()  {
    }
  TrajectoryRequest_(const ContainerAllocator& _alloc)
    : initPos(_alloc)
    , goalPos(_alloc)
    , map(_alloc)
    , processCostMap(_alloc)
    , costMap(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _initPos_type;
  _initPos_type initPos;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _goalPos_type;
  _goalPos_type goalPos;

   typedef  ::nav_msgs::OccupancyGrid_<ContainerAllocator>  _map_type;
  _map_type map;

   typedef  ::std_msgs::Bool_<ContainerAllocator>  _processCostMap_type;
  _processCostMap_type processCostMap;

   typedef  ::nav_msgs::OccupancyGrid_<ContainerAllocator>  _costMap_type;
  _costMap_type costMap;





  typedef boost::shared_ptr< ::final_project::TrajectoryRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::final_project::TrajectoryRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TrajectoryRequest_

typedef ::final_project::TrajectoryRequest_<std::allocator<void> > TrajectoryRequest;

typedef boost::shared_ptr< ::final_project::TrajectoryRequest > TrajectoryRequestPtr;
typedef boost::shared_ptr< ::final_project::TrajectoryRequest const> TrajectoryRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::final_project::TrajectoryRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::final_project::TrajectoryRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::final_project::TrajectoryRequest_<ContainerAllocator1> & lhs, const ::final_project::TrajectoryRequest_<ContainerAllocator2> & rhs)
{
  return lhs.initPos == rhs.initPos &&
    lhs.goalPos == rhs.goalPos &&
    lhs.map == rhs.map &&
    lhs.processCostMap == rhs.processCostMap &&
    lhs.costMap == rhs.costMap;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::final_project::TrajectoryRequest_<ContainerAllocator1> & lhs, const ::final_project::TrajectoryRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace final_project

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::final_project::TrajectoryRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::final_project::TrajectoryRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::final_project::TrajectoryRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::final_project::TrajectoryRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::final_project::TrajectoryRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::final_project::TrajectoryRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::final_project::TrajectoryRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "64c1d7e1f483fd6bc5cfb63aa85bb0d3";
  }

  static const char* value(const ::final_project::TrajectoryRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x64c1d7e1f483fd6bULL;
  static const uint64_t static_value2 = 0xc5cfb63aa85bb0d3ULL;
};

template<class ContainerAllocator>
struct DataType< ::final_project::TrajectoryRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "final_project/TrajectoryRequest";
  }

  static const char* value(const ::final_project::TrajectoryRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::final_project::TrajectoryRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Point initPos\n"
"geometry_msgs/Point goalPos\n"
"nav_msgs/OccupancyGrid map\n"
"std_msgs/Bool processCostMap\n"
"nav_msgs/OccupancyGrid costMap\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: nav_msgs/OccupancyGrid\n"
"# This represents a 2-D grid map, in which each cell represents the probability of\n"
"# occupancy.\n"
"\n"
"Header header \n"
"\n"
"#MetaData for the map\n"
"MapMetaData info\n"
"\n"
"# The map data, in row-major order, starting with (0,0).  Occupancy\n"
"# probabilities are in the range [0,100].  Unknown is -1.\n"
"int8[] data\n"
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
"MSG: nav_msgs/MapMetaData\n"
"# This hold basic information about the characterists of the OccupancyGrid\n"
"\n"
"# The time at which the map was loaded\n"
"time map_load_time\n"
"# The map resolution [m/cell]\n"
"float32 resolution\n"
"# Map width [cells]\n"
"uint32 width\n"
"# Map height [cells]\n"
"uint32 height\n"
"# The origin of the map [m, m, rad].  This is the real-world pose of the\n"
"# cell (0,0) in the map.\n"
"geometry_msgs/Pose origin\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Bool\n"
"bool data\n"
;
  }

  static const char* value(const ::final_project::TrajectoryRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::final_project::TrajectoryRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.initPos);
      stream.next(m.goalPos);
      stream.next(m.map);
      stream.next(m.processCostMap);
      stream.next(m.costMap);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrajectoryRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::final_project::TrajectoryRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::final_project::TrajectoryRequest_<ContainerAllocator>& v)
  {
    s << indent << "initPos: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.initPos);
    s << indent << "goalPos: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.goalPos);
    s << indent << "map: ";
    s << std::endl;
    Printer< ::nav_msgs::OccupancyGrid_<ContainerAllocator> >::stream(s, indent + "  ", v.map);
    s << indent << "processCostMap: ";
    s << std::endl;
    Printer< ::std_msgs::Bool_<ContainerAllocator> >::stream(s, indent + "  ", v.processCostMap);
    s << indent << "costMap: ";
    s << std::endl;
    Printer< ::nav_msgs::OccupancyGrid_<ContainerAllocator> >::stream(s, indent + "  ", v.costMap);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FINAL_PROJECT_MESSAGE_TRAJECTORYREQUEST_H
