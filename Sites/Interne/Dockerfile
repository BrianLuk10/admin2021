FROM php:7.2-apache
COPY sites-available/ /etc/apache2/sites-available
COPY html/index.php   /var/www/html/index.php

RUN docker-php-ext-install pdo pdo_mysql

RUN a2ensite erp.conf

EXPOSE 80
