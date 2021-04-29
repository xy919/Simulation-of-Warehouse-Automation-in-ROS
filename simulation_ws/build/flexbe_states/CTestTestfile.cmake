# CMake generated Testfile for 
# Source directory: /home/comp2/simulation_ws/src/flexbe_behavior_engine/flexbe_states
# Build directory: /home/comp2/simulation_ws/build/flexbe_states
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_flexbe_states_rostest_tests_run_rostest.test "/home/comp2/simulation_ws/build/flexbe_states/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/comp2/simulation_ws/build/flexbe_states/test_results/flexbe_states/rostest-tests_run_rostest.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/comp2/simulation_ws/src/flexbe_behavior_engine/flexbe_states --package=flexbe_states --results-filename tests_run_rostest.xml --results-base-dir \"/home/comp2/simulation_ws/build/flexbe_states/test_results\" /home/comp2/simulation_ws/src/flexbe_behavior_engine/flexbe_states/tests/run_rostest.test ")
subdirs("gtest")
