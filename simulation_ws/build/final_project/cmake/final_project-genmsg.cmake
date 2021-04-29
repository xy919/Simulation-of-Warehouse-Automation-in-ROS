# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "final_project: 1 messages, 2 services")

set(MSG_I_FLAGS "-Ifinal_project:/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/melodic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(final_project_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/msg/AprilTag.msg" NAME_WE)
add_custom_target(_final_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "final_project" "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/msg/AprilTag.msg" "geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Trajectory.srv" NAME_WE)
add_custom_target(_final_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "final_project" "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Trajectory.srv" "nav_msgs/MapMetaData:std_msgs/Bool:nav_msgs/Path:geometry_msgs/Pose:nav_msgs/OccupancyGrid:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Centroid.srv" NAME_WE)
add_custom_target(_final_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "final_project" "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Centroid.srv" "nav_msgs/MapMetaData:std_msgs/Bool:geometry_msgs/Pose:nav_msgs/OccupancyGrid:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(final_project
  "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/msg/AprilTag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/final_project
)

### Generating Services
_generate_srv_cpp(final_project
  "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Centroid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/final_project
)
_generate_srv_cpp(final_project
  "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Trajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/final_project
)

### Generating Module File
_generate_module_cpp(final_project
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/final_project
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(final_project_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(final_project_generate_messages final_project_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/msg/AprilTag.msg" NAME_WE)
add_dependencies(final_project_generate_messages_cpp _final_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Trajectory.srv" NAME_WE)
add_dependencies(final_project_generate_messages_cpp _final_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Centroid.srv" NAME_WE)
add_dependencies(final_project_generate_messages_cpp _final_project_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(final_project_gencpp)
add_dependencies(final_project_gencpp final_project_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS final_project_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(final_project
  "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/msg/AprilTag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/final_project
)

### Generating Services
_generate_srv_eus(final_project
  "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Centroid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/final_project
)
_generate_srv_eus(final_project
  "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Trajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/final_project
)

### Generating Module File
_generate_module_eus(final_project
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/final_project
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(final_project_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(final_project_generate_messages final_project_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/msg/AprilTag.msg" NAME_WE)
add_dependencies(final_project_generate_messages_eus _final_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Trajectory.srv" NAME_WE)
add_dependencies(final_project_generate_messages_eus _final_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Centroid.srv" NAME_WE)
add_dependencies(final_project_generate_messages_eus _final_project_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(final_project_geneus)
add_dependencies(final_project_geneus final_project_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS final_project_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(final_project
  "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/msg/AprilTag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/final_project
)

### Generating Services
_generate_srv_lisp(final_project
  "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Centroid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/final_project
)
_generate_srv_lisp(final_project
  "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Trajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/final_project
)

### Generating Module File
_generate_module_lisp(final_project
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/final_project
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(final_project_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(final_project_generate_messages final_project_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/msg/AprilTag.msg" NAME_WE)
add_dependencies(final_project_generate_messages_lisp _final_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Trajectory.srv" NAME_WE)
add_dependencies(final_project_generate_messages_lisp _final_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Centroid.srv" NAME_WE)
add_dependencies(final_project_generate_messages_lisp _final_project_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(final_project_genlisp)
add_dependencies(final_project_genlisp final_project_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS final_project_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(final_project
  "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/msg/AprilTag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/final_project
)

### Generating Services
_generate_srv_nodejs(final_project
  "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Centroid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/final_project
)
_generate_srv_nodejs(final_project
  "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Trajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/final_project
)

### Generating Module File
_generate_module_nodejs(final_project
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/final_project
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(final_project_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(final_project_generate_messages final_project_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/msg/AprilTag.msg" NAME_WE)
add_dependencies(final_project_generate_messages_nodejs _final_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Trajectory.srv" NAME_WE)
add_dependencies(final_project_generate_messages_nodejs _final_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Centroid.srv" NAME_WE)
add_dependencies(final_project_generate_messages_nodejs _final_project_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(final_project_gennodejs)
add_dependencies(final_project_gennodejs final_project_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS final_project_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(final_project
  "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/msg/AprilTag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/final_project
)

### Generating Services
_generate_srv_py(final_project
  "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Centroid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/final_project
)
_generate_srv_py(final_project
  "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Trajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/final_project
)

### Generating Module File
_generate_module_py(final_project
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/final_project
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(final_project_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(final_project_generate_messages final_project_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/msg/AprilTag.msg" NAME_WE)
add_dependencies(final_project_generate_messages_py _final_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Trajectory.srv" NAME_WE)
add_dependencies(final_project_generate_messages_py _final_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/comp2/simulation_ws/src/turtlebot-2-autonomous-navigation/srv/Centroid.srv" NAME_WE)
add_dependencies(final_project_generate_messages_py _final_project_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(final_project_genpy)
add_dependencies(final_project_genpy final_project_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS final_project_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/final_project)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/final_project
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(final_project_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(final_project_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(final_project_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/final_project)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/final_project
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(final_project_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(final_project_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(final_project_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/final_project)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/final_project
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(final_project_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(final_project_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(final_project_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/final_project)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/final_project
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(final_project_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(final_project_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(final_project_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/final_project)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/final_project\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/final_project
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(final_project_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(final_project_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(final_project_generate_messages_py nav_msgs_generate_messages_py)
endif()
