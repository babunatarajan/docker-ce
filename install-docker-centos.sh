#!/usr/bin/env bash

sudo su - 
docker_compose_ver="1.28.2"

mkdir /root/docker
cd /root/docker/
cp docker-compose.yml /root/docker
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install docker
systemctl start docker
systemctl enable docker
systemctl status docker
curl -L "https://github.com/docker/compose/releases/download/$docker_compose_ver/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version

echo "Update docker-compose.yml and run the following command to start the container"
echo "docker-compose up -d"
