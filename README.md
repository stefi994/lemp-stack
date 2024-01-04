# lemp-stack

docker network create nginx-php

docker build . -t nginx-image -f nginx/Dockerfile
docker build . -t php-image -f php/Dockerfile


docker run -d --name php-container -network nginx-php php-image
docker run -d --name nginx-container --network nginx-php -p 8080:80 nginx-image


