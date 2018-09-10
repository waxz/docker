#!/bin/bash
set -e

# setup ros environment
source "/opt/ros/$ROS_DISTRO/setup.bash"
echo "run ros_entrypoint ... done"

#set environment
# fix x11 bug
LC_ALL=C

cd /ros/catkin_ws
python app.py
exec "$@"