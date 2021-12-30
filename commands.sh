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