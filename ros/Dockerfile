FROM osrf/ros:indigo-desktop-full

# RUN apt-get  update && apt-get install -y nano openssh-server

# RUN apt-get update && apt-get install -y tmux nano unzip && rm -rf /var/likb/apt/lists/*
RUN apt-get update && apt-get install -y python-pip  \
 ros-indigo-ecl-config ros-indigo-ecl-errors \
 ros-indigo-ecl-time-lite ros-indigo-sophus ros-indigo-move-base-msgs ros-indigo-bfl \
 libsdl-image1.2-dev ros-indigo-sound-play \
   google-mock libboost-all-dev libeigen3-dev libgflags-dev libgoogle-glog-dev liblua5.2-dev libprotobuf-dev libsuitesparse-dev libwebp-dev ninja-build protobuf-compiler python-sphinx ros-indigo-tf2-eigen libatlas-base-dev libsuitesparse-dev liblapack-dev \
&& rm -rf /var/likb/apt/lists/*
# Set the working directory 
WORKDIR /ros/catkin_ws


# Copy the current directory contents into the container at /app
# COPY  . /ros/catkin_ws

# COPY ./shell/.bsahrc /root/.bsahrc
# ENTRYPOINT ["/ros_entrypoint.sh"]



# Define environment variable
# ENV DockerName World

# Set proxy server, replace host:port with values for your servers
# ENV http_proxy 127.0.0.1:10800
# ENV https_proxy 127.0.0.1:10800

# ARG buildno

# RUN echo "Build number: $buildno"

# Run app.py when the container launches
#There can only be one CMD instruction in a Dockerfile. 
#If you list more than one CMD then only the last CMD will take effect.
RUN pip install flask
