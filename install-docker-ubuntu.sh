#!/bin/sh

sudo su - 
docker_compose_ver="1.28.2"

mkdir /root/docker
cd /root/docker/

apt-get -y update

apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" -y

curl -fsSL get.docker.com | sh

curl -L "https://github.com/docker/compose/releases/download/$docker_compose_ver/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version

cp docker-compose.yml /root/docker
echo "Update docker-compose.yml and run the following command to start the container"
echo "docker-compose up -d"

