# Warehouse-Automation-Simulation-in-ROS

# Steps
Install gazebo plugins
```
```
Install catkin tools
```
sudo apt-get install ros-melodic-catkin python-catkin-tools 
```
\section{Robot Operating System (ROS)}
\subsection{ROS packages for warehouse simulation}
\textbf{The system is tested on ROS Melodic and installed Ubuntu 18.04.5 LTS. To run the full simulation, do the following steps:}

\vspace{5mm}

\textbf{Installation Catkin workingspace:}
\begin{lstlisting}
$ git clone https://github.com/xy919/Simulation-of-Warehouse-Automation-in-ROS.git
$ cd ~/simulation_ws
$ catkin build
$ source devel/setup.bash
\end{lstlisting}

\textbf{Install dependencies:}
\begin{lstlisting}
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
\end{lstlisting}
\vspace{5mm}
\clearpage
\subsection{Simulation with Gazebo}

\textbf{Launch Gazebo with the environment: }

\begin{lstlisting}
$ roslaunch my_simulations final_simulation.launch
\end{lstlisting}

The Gazebo Simulator being launched:
\begin{figure}[!htbp]
\centering
\includegraphics[width=0.6\linewidth]{figures/Gazebo Simulation.png}
\caption{Gazebo Simulation launched}
\label{gazebosimualtion}
\end{figure}

\textbf{Launch FlexBE App for simulation control:}

\begin{lstlisting}
$ roslaunch flexbe_app flexbe_full.launch
\end{lstlisting}

In the FlexBE GUI, click the \textit{Load Behavior} button on top and select \textit{final\_simulation}  behavior. Next, go to the Runtime control tab, and start the simulation. 

\vspace{5mm}
\begin{figure}[h]
    \centering
    \begin{minipage}{0.45\textwidth}
        \centering
       \includegraphics[width=0.55\linewidth]{figures/Load behavior.png}
\caption{Load Behavior}
\label{behavior}
    \end{minipage}\hfill
    \begin{minipage}{0.45\textwidth}
        \centering
        \includegraphics[width=0.45\linewidth]{figures/runtime control.png} % second figure itself
        \caption{Runtime Control Tab}
    \end{minipage}
\end{figure}

Observe the simulation happening in Gazebo also the status display panel in FlexBE.
\begin{figure}[!htbp]
\centering
\includegraphics[width=0.85\linewidth]{figures/Flexbeapp.png}
\caption{FlexBE Status Display Panel}
\label{flexbe display panel}
\end{figure}
