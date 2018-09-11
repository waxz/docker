#!/bin/bash
set -e

# setup ros environment
source "/opt/ros/$ROS_DISTRO/setup.bash"
echo "run ros_entrypoint ... "

#set environment
# fix x11 bug
LC_ALL=C
#if [ ! $1 -a $1 == "app" ];then cd /ros/catkin_ws;python app.py;elif [ $1 == "bash" ]; then bash ;fi
exec "$@"