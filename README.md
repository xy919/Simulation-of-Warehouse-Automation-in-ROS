# Warehouse-Automation-Simulation-in-ROS

## Steps
Install the workspace
```
$ git clone https://github.com/xy919/Simulation-of-Warehouse-Automation-in-ROS.git
$ cd ~/simulation_ws
$ catkin build
$ source devel/setup.bash
```
Install dependencies
```
$ sudo apt install ros-melodic-moveit #install moveit! package
$ sudo apt install ros-melodic-map-server #install map_server package
$ sudo apt install ros-melodic-move-base #install move_base package
$ sudo apt install ros-melodic-navigation #install navigation package
$ sudo apt install ros-melodic-slam-gmapping #install slam-gmapping package
$ sudo apt install ros-melodic-trac-ik-kinematics.plugin 
#install trac_ik_kinematics plugin
$ sudo apt install ros-melodic-depthimage-to-laserscan 
#install depthimage_to_laserscan package
$ sudo apt install ros-melodic-ros-controllers 
#install ros_controllers package
$ sudo apt install ros-melodic-yocs-cmd-vel-mux 
#install  yocs_cmd_vel_mux package
$ sudo apt-get install pyqt5-dev-tools #install Development tools for PyQt5

```
### Launch Gazebo with the environment

```
$ roslaunch my_simulations final_simulation.launch
```

### Launch FlexBE App for simulation control
```
$ roslaunch flexbe_app flexbe_full.launch
```
In the FlexBE GUI, click the *Load Behavior* button on top and select *final_simulation* behavior. Next, go to the Runtime control tab, and start the simulation.
