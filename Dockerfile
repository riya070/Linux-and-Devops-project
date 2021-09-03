FROM php:7.2-apache
COPY ./index.php /var/www/html
RUN  docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo-mysql

