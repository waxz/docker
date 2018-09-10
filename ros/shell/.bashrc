ros-env(){
    source "/opt/ros/$ROS_DISTRO/setup.bash"
    source /ros/catkin_ws/devel/setup.bash
    export ROS_PACKAGE_PATH=/ros/catkin_ws/:/opt/ros/$ROS_DISTRO/share/
}
# setup ros environment
ros-env

echo "run ros_entrypoint ... done"

#set environment
# fix x11 bug
LC_ALL=C

