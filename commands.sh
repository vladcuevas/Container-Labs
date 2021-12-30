# Common commands, self explanatory
docker container --help
docker version
docker info
docker container ls
docker container ls -a
docker container run --publish 80:80 --detach --name webhost nginx
docker container stop e3c897ca4543
docker container rm -f de6 e3c dab

#MongoDB
docker run --name mongo -d mongo

#MYSQL
docker rm docker pull --platform linux/amd64 mysql
docker container run --publish 3306:3306 --name dbmysql -e MYSQL_RANDOM_ROOT_PASSWORD=yes -d mysql    

#nginx
docker container run --publish 80:80 --detach --name webhost nginx

#HTTPD
docker container run --publish 8080:80 --detach --name httpd_name httpd

#List Docker Images
docker image ls

#CLI process monitoring

#Performance stats of all containers
docker container stats
docker container stats --help

#Detail one container config
docker container inspect

#Process list in one container
docker containser top

#Getting a shell insider containers

#Start new container interactively
docker container run -it
docker container run -it --name ubuntu ubuntu
## Re-run a container interactively
docker container start -ai ubuntu
# Example
docker pull alpine
docker image ls
docker container run -it alpine bash
docker container run -it alpine sh

#Run additional command in existing container
docker container exec -it
docker container exec -it the-container-name bash

# Docker Networks: Concepts
## Each container connects to a VPN "bridge"
## by default all containers can listen to other containers

docker container run -p

docker container port <container>

docker container run -p 80:80 --name webhost -d nginx
docker container port webhost
docker container inspect

## Get the container ip address 
docker container inspect --format '{{ .NetworkSettings.IPAddress}}' webhost

## Docker Networks: CLI Management
docker network ls
docker network inspect

### Create network
docker network create --driver
docker network connect
docker network disconnect

docker container run -d --name new_nginx --network my_app_net nginx:alpine

docker network create my_app_net
docker network ls

### The below connection is made between the network and the container
docker network connect 74a667aa66c3 7b4763a0b772 
# where 74a667aa66c3 is the network id and the latest is the container id, 
# therefore the container will be connected to one or more networks 
docker container inspect webhost

# Disconnect is IDEM to connect, self explanatory
docker network disconnect 74a667aa66c3 7b4763a0b772