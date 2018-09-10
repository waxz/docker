#https://docs.docker.com/v17.09/compose/install/#install-compose

###### docker
echo "Check Docker"
res=$(docker --version)

for a in $res
do
if [ $a == "version" ];then install_ok=true;break;fi
done


if [ ! $install_ok ]; then  echo "Install Docker";res=$(sudo apt-get install docker.io);fi

res=$(docker --version)
for a in $res
do
if [ $install_ok -o $a == "version" ];then install_ok=true;break;fi
done

if [ $install_ok ]; then echo "Check Docker Ok";fi


###### docker compose
version="1.18.0"
echo "Check docker-compose $version"
res=$(docker-compose --version)
for a in $res
do
if [ $a == "version" ];then install_ok=true;break;fi
done
if [ ! install_ok ]; then echo "Install docker-compose $version"; sudo install docker-compose ;fi

res=$(docker-compose --version)
for a in $res
do
if [ $a == "version" ];then install_ok=true;break;fi
done
if [ ! install_ok ]; then exit 0; else echo "Install docker-compose $version Done" ;fi

#sudo curl -L https://github.com/docker/compose/releases/download/$version/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
#sudo chmod +x /usr/local/bin/docker-compose
echo "Check docker-compose completion $version"
res=$(ls /etc/bash_completion.d/docker-compose)
if [ res[0] == "ls" ];then echo "Install docker-compose completion $version";sudo curl -L https://raw.githubusercontent.com/docker/compose/$version/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose;fi
res=$(ls /etc/bash_completion.d/docker-compose)
if [ res[0] != "ls" ];then echo "Install docker-compose completion $version Done";fi


