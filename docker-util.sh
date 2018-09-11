ros-build(){
    sudo docker-compose build
}

ros-up(){
    sudo docker-compose up
}
ros-down(){
    sudo docker-compose down
}

ros-start(){
    sudo docker start ros
}

ros-connect(){
    sudo docker-compose exec ros bash
}

ros-bash(){
    sudo docker-compose run --rm  ros bash
}

ros-rm(){
    sudo docker-compose stop
    sudo docker-compose rm
}

ros-log(){
    docker logs -t -f ros
}

docker-rm-exited(){
    sudo docker rm $(sudo docker ps -aq  --filter status=exited)
}
docker-rmi-none(){
    sudo docker rmi $(sudo docker images --filter "dangling=true" -q --no-trunc)
}
