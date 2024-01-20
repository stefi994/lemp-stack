#!/bin/bash
docker build . -t nginx-image -f nginx/Dockerfile
docker build . -t php-image -f php/Dockerfile

docker network create nginx-php

docker run -d --name php-container --network nginx-php php-image
docker run -d --name nginx-container --network nginx-php -p 8080:80 nginx-image

docker network create php-mysql

docker network connect php-mysql php-container

docker run --name mysql -d -e MYSQL_ROOT_PASSWORD=lemp --network php-mysql mysql
