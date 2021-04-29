# CMake generated Testfile for 
# Source directory: /home/comp2/simulation_ws/src/flexbe_behavior_engine/flexbe_testing
# Build directory: /home/comp2/simulation_ws/build/flexbe_testing
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_flexbe_testing_rostest_test_selftest.test "/home/comp2/simulation_ws/build/flexbe_testing/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/comp2/simulation_ws/build/flexbe_testing/test_results/flexbe_testing/rostest-test_selftest.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/comp2/simulation_ws/src/flexbe_behavior_engine/flexbe_testing --package=flexbe_testing --results-filename test_selftest.xml --results-base-dir \"/home/comp2/simulation_ws/build/flexbe_testing/test_results\" /home/comp2/simulation_ws/src/flexbe_behavior_engine/flexbe_testing/test/selftest.test ")
subdirs("gtest")
