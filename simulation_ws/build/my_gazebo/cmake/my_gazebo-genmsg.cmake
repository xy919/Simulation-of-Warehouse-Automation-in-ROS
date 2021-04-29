# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "my_gazebo: 5 messages, 2 services")

set(MSG_I_FLAGS "-Imy_gazebo:/home/comp2/simulation_ws/src/my_gazebo/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(my_gazebo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/srv/ConveyorBeltControl.srv" NAME_WE)
add_custom_target(_my_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_gazebo" "/home/comp2/simulation_ws/src/my_gazebo/srv/ConveyorBeltControl.srv" "my_gazebo/ConveyorBeltState"
)

get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/VacuumGripperState.msg" NAME_WE)
add_custom_target(_my_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_gazebo" "/home/comp2/simulation_ws/src/my_gazebo/msg/VacuumGripperState.msg" ""
)

get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/srv/VacuumGripperControl.srv" NAME_WE)
add_custom_target(_my_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_gazebo" "/home/comp2/simulation_ws/src/my_gazebo/srv/VacuumGripperControl.srv" ""
)

get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/Model.msg" NAME_WE)
add_custom_target(_my_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_gazebo" "/home/comp2/simulation_ws/src/my_gazebo/msg/Model.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/ConveyorBeltState.msg" NAME_WE)
add_custom_target(_my_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_gazebo" "/home/comp2/simulation_ws/src/my_gazebo/msg/ConveyorBeltState.msg" ""
)

get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/LogicalCameraImage.msg" NAME_WE)
add_custom_target(_my_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_gazebo" "/home/comp2/simulation_ws/src/my_gazebo/msg/LogicalCameraImage.msg" "my_gazebo/Model:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/Proximity.msg" NAME_WE)
add_custom_target(_my_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_gazebo" "/home/comp2/simulation_ws/src/my_gazebo/msg/Proximity.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/ConveyorBeltState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_gazebo
)
_generate_msg_cpp(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/Model.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_gazebo
)
_generate_msg_cpp(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/Proximity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_gazebo
)
_generate_msg_cpp(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/LogicalCameraImage.msg"
  "${MSG_I_FLAGS}"
  "/home/comp2/simulation_ws/src/my_gazebo/msg/Model.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_gazebo
)
_generate_msg_cpp(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/VacuumGripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_gazebo
)

### Generating Services
_generate_srv_cpp(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/srv/VacuumGripperControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_gazebo
)
_generate_srv_cpp(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/srv/ConveyorBeltControl.srv"
  "${MSG_I_FLAGS}"
  "/home/comp2/simulation_ws/src/my_gazebo/msg/ConveyorBeltState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_gazebo
)

### Generating Module File
_generate_module_cpp(my_gazebo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_gazebo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(my_gazebo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(my_gazebo_generate_messages my_gazebo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/srv/ConveyorBeltControl.srv" NAME_WE)
add_dependencies(my_gazebo_generate_messages_cpp _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/VacuumGripperState.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_cpp _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/srv/VacuumGripperControl.srv" NAME_WE)
add_dependencies(my_gazebo_generate_messages_cpp _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/Model.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_cpp _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/ConveyorBeltState.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_cpp _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/LogicalCameraImage.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_cpp _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/Proximity.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_cpp _my_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_gazebo_gencpp)
add_dependencies(my_gazebo_gencpp my_gazebo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_gazebo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/ConveyorBeltState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_gazebo
)
_generate_msg_eus(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/Model.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_gazebo
)
_generate_msg_eus(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/Proximity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_gazebo
)
_generate_msg_eus(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/LogicalCameraImage.msg"
  "${MSG_I_FLAGS}"
  "/home/comp2/simulation_ws/src/my_gazebo/msg/Model.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_gazebo
)
_generate_msg_eus(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/VacuumGripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_gazebo
)

### Generating Services
_generate_srv_eus(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/srv/VacuumGripperControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_gazebo
)
_generate_srv_eus(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/srv/ConveyorBeltControl.srv"
  "${MSG_I_FLAGS}"
  "/home/comp2/simulation_ws/src/my_gazebo/msg/ConveyorBeltState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_gazebo
)

### Generating Module File
_generate_module_eus(my_gazebo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_gazebo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(my_gazebo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(my_gazebo_generate_messages my_gazebo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/srv/ConveyorBeltControl.srv" NAME_WE)
add_dependencies(my_gazebo_generate_messages_eus _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/VacuumGripperState.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_eus _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/srv/VacuumGripperControl.srv" NAME_WE)
add_dependencies(my_gazebo_generate_messages_eus _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/Model.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_eus _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/ConveyorBeltState.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_eus _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/LogicalCameraImage.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_eus _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/Proximity.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_eus _my_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_gazebo_geneus)
add_dependencies(my_gazebo_geneus my_gazebo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_gazebo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/ConveyorBeltState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_gazebo
)
_generate_msg_lisp(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/Model.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_gazebo
)
_generate_msg_lisp(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/Proximity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_gazebo
)
_generate_msg_lisp(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/LogicalCameraImage.msg"
  "${MSG_I_FLAGS}"
  "/home/comp2/simulation_ws/src/my_gazebo/msg/Model.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_gazebo
)
_generate_msg_lisp(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/VacuumGripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_gazebo
)

### Generating Services
_generate_srv_lisp(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/srv/VacuumGripperControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_gazebo
)
_generate_srv_lisp(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/srv/ConveyorBeltControl.srv"
  "${MSG_I_FLAGS}"
  "/home/comp2/simulation_ws/src/my_gazebo/msg/ConveyorBeltState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_gazebo
)

### Generating Module File
_generate_module_lisp(my_gazebo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_gazebo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(my_gazebo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(my_gazebo_generate_messages my_gazebo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/srv/ConveyorBeltControl.srv" NAME_WE)
add_dependencies(my_gazebo_generate_messages_lisp _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/VacuumGripperState.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_lisp _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/srv/VacuumGripperControl.srv" NAME_WE)
add_dependencies(my_gazebo_generate_messages_lisp _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/Model.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_lisp _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/ConveyorBeltState.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_lisp _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/LogicalCameraImage.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_lisp _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/Proximity.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_lisp _my_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_gazebo_genlisp)
add_dependencies(my_gazebo_genlisp my_gazebo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_gazebo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/ConveyorBeltState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_gazebo
)
_generate_msg_nodejs(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/Model.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_gazebo
)
_generate_msg_nodejs(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/Proximity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_gazebo
)
_generate_msg_nodejs(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/LogicalCameraImage.msg"
  "${MSG_I_FLAGS}"
  "/home/comp2/simulation_ws/src/my_gazebo/msg/Model.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_gazebo
)
_generate_msg_nodejs(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/VacuumGripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_gazebo
)

### Generating Services
_generate_srv_nodejs(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/srv/VacuumGripperControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_gazebo
)
_generate_srv_nodejs(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/srv/ConveyorBeltControl.srv"
  "${MSG_I_FLAGS}"
  "/home/comp2/simulation_ws/src/my_gazebo/msg/ConveyorBeltState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_gazebo
)

### Generating Module File
_generate_module_nodejs(my_gazebo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_gazebo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(my_gazebo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(my_gazebo_generate_messages my_gazebo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/srv/ConveyorBeltControl.srv" NAME_WE)
add_dependencies(my_gazebo_generate_messages_nodejs _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/VacuumGripperState.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_nodejs _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/srv/VacuumGripperControl.srv" NAME_WE)
add_dependencies(my_gazebo_generate_messages_nodejs _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/Model.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_nodejs _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/ConveyorBeltState.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_nodejs _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/LogicalCameraImage.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_nodejs _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/Proximity.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_nodejs _my_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_gazebo_gennodejs)
add_dependencies(my_gazebo_gennodejs my_gazebo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_gazebo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/ConveyorBeltState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_gazebo
)
_generate_msg_py(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/Model.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_gazebo
)
_generate_msg_py(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/Proximity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_gazebo
)
_generate_msg_py(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/LogicalCameraImage.msg"
  "${MSG_I_FLAGS}"
  "/home/comp2/simulation_ws/src/my_gazebo/msg/Model.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_gazebo
)
_generate_msg_py(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/msg/VacuumGripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_gazebo
)

### Generating Services
_generate_srv_py(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/srv/VacuumGripperControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_gazebo
)
_generate_srv_py(my_gazebo
  "/home/comp2/simulation_ws/src/my_gazebo/srv/ConveyorBeltControl.srv"
  "${MSG_I_FLAGS}"
  "/home/comp2/simulation_ws/src/my_gazebo/msg/ConveyorBeltState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_gazebo
)

### Generating Module File
_generate_module_py(my_gazebo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_gazebo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(my_gazebo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(my_gazebo_generate_messages my_gazebo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/srv/ConveyorBeltControl.srv" NAME_WE)
add_dependencies(my_gazebo_generate_messages_py _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/VacuumGripperState.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_py _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/srv/VacuumGripperControl.srv" NAME_WE)
add_dependencies(my_gazebo_generate_messages_py _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/Model.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_py _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/ConveyorBeltState.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_py _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/LogicalCameraImage.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_py _my_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/my_gazebo/msg/Proximity.msg" NAME_WE)
add_dependencies(my_gazebo_generate_messages_py _my_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_gazebo_genpy)
add_dependencies(my_gazebo_genpy my_gazebo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_gazebo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_gazebo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(my_gazebo_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(my_gazebo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_gazebo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(my_gazebo_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(my_gazebo_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_gazebo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(my_gazebo_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(my_gazebo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_gazebo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(my_gazebo_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(my_gazebo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_gazebo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_gazebo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_gazebo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(my_gazebo_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(my_gazebo_generate_messages_py std_msgs_generate_messages_py)
endif()
