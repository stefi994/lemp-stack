FROM php:fpm
RUN docker-php-ext-install mysqli

COPY ./code/index.php /usr/share/nginx/html/index.php
