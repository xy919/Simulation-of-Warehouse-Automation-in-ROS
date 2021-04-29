# CMake generated Testfile for 
# Source directory: /home/comp2/simulation_ws/src/flexbe_app
# Build directory: /home/comp2/simulation_ws/build/flexbe_app
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_flexbe_app_rostest_launch_test_report.test "/home/comp2/simulation_ws/build/flexbe_app/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/comp2/simulation_ws/build/flexbe_app/test_results/flexbe_app/rostest-launch_test_report.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/comp2/simulation_ws/src/flexbe_app --package=flexbe_app --results-filename launch_test_report.xml --results-base-dir \"/home/comp2/simulation_ws/build/flexbe_app/test_results\" /home/comp2/simulation_ws/src/flexbe_app/launch/test_report.test ")
subdirs("gtest")
