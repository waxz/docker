FROM osrf/ros:indigo-desktop-full

# RUN apt-get  update && apt-get install -y nano openssh-server

# RUN apt-get update && apt-get install -y tmux nano unzip && rm -rf /var/likb/apt/lists/*
RUN apt-get update && apt-get install -y python-pip  && rm -rf /var/likb/apt/lists/*


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
