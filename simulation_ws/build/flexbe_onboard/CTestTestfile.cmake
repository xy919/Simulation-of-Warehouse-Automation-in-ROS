# CMake generated Testfile for 
# Source directory: /home/comp2/simulation_ws/src/flexbe_behavior_engine/flexbe_onboard
# Build directory: /home/comp2/simulation_ws/build/flexbe_onboard
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_flexbe_onboard_rostest_test_flexbe_onboard.test "/home/comp2/simulation_ws/build/flexbe_onboard/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/comp2/simulation_ws/build/flexbe_onboard/test_results/flexbe_onboard/rostest-test_flexbe_onboard.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/comp2/simulation_ws/src/flexbe_behavior_engine/flexbe_onboard --package=flexbe_onboard --results-filename test_flexbe_onboard.xml --results-base-dir \"/home/comp2/simulation_ws/build/flexbe_onboard/test_results\" /home/comp2/simulation_ws/src/flexbe_behavior_engine/flexbe_onboard/test/flexbe_onboard.test ")
subdirs("gtest")
