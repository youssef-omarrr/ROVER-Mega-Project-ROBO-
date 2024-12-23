// Generated by gencpp from file mega_rover_project_pkg/mine.msg
// DO NOT EDIT!


#ifndef MEGA_ROVER_PROJECT_PKG_MESSAGE_MINE_H
#define MEGA_ROVER_PROJECT_PKG_MESSAGE_MINE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mega_rover_project_pkg
{
template <class ContainerAllocator>
struct mine_
{
  typedef mine_<ContainerAllocator> Type;

  mine_()
    : flag(0)  {
    }
  mine_(const ContainerAllocator& _alloc)
    : flag(0)  {
  (void)_alloc;
    }



   typedef int64_t _flag_type;
  _flag_type flag;





  typedef boost::shared_ptr< ::mega_rover_project_pkg::mine_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mega_rover_project_pkg::mine_<ContainerAllocator> const> ConstPtr;

}; // struct mine_

typedef ::mega_rover_project_pkg::mine_<std::allocator<void> > mine;

typedef boost::shared_ptr< ::mega_rover_project_pkg::mine > minePtr;
typedef boost::shared_ptr< ::mega_rover_project_pkg::mine const> mineConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mega_rover_project_pkg::mine_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mega_rover_project_pkg::mine_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mega_rover_project_pkg::mine_<ContainerAllocator1> & lhs, const ::mega_rover_project_pkg::mine_<ContainerAllocator2> & rhs)
{
  return lhs.flag == rhs.flag;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mega_rover_project_pkg::mine_<ContainerAllocator1> & lhs, const ::mega_rover_project_pkg::mine_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mega_rover_project_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::mega_rover_project_pkg::mine_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mega_rover_project_pkg::mine_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mega_rover_project_pkg::mine_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mega_rover_project_pkg::mine_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mega_rover_project_pkg::mine_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mega_rover_project_pkg::mine_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mega_rover_project_pkg::mine_<ContainerAllocator> >
{
  static const char* value()
  {
    return "87ee459c4b4bcda4c5ae0619ce324ea2";
  }

  static const char* value(const ::mega_rover_project_pkg::mine_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x87ee459c4b4bcda4ULL;
  static const uint64_t static_value2 = 0xc5ae0619ce324ea2ULL;
};

template<class ContainerAllocator>
struct DataType< ::mega_rover_project_pkg::mine_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mega_rover_project_pkg/mine";
  }

  static const char* value(const ::mega_rover_project_pkg::mine_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mega_rover_project_pkg::mine_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 flag\n"
;
  }

  static const char* value(const ::mega_rover_project_pkg::mine_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mega_rover_project_pkg::mine_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.flag);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct mine_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mega_rover_project_pkg::mine_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mega_rover_project_pkg::mine_<ContainerAllocator>& v)
  {
    s << indent << "flag: ";
    Printer<int64_t>::stream(s, indent + "  ", v.flag);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MEGA_ROVER_PROJECT_PKG_MESSAGE_MINE_H
