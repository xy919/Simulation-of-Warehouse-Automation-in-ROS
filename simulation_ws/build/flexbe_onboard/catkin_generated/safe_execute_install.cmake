execute_process(COMMAND "/home/comp2/simulation_ws/build/flexbe_onboard/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/comp2/simulation_ws/build/flexbe_onboard/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
