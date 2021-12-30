# Common commands, self explanatory

docker version
docker info
docker container run
docker run
docker container run --publish 80:80 ngnix
docker container run --publish 80:80 nginx
docker container run --publish 80:80 --detach nginx
docker container ls
docker container stop e3c897ca4543
docker ls
docker container ls -a
docker container run --publish 80:80 --detach --name webhost nginx
docker container logs webhost
docker container --help
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