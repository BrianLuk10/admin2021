FROM php:7.2-apache

RUN apt-get update -y
RUN apt-get install nano -y
RUN docker-php-ext-install pdo pdo_mysql


COPY sites-available/ /etc/apache2/sites-available

RUN ls -s /etc/apache2/sites-available/b2b.conf /etc/apache2/sites-enabled
RUN ls -s /etc/apache2/sites-available/www.conf /etc/apache2/sites-enabled

COPY www/index.html /var/www/html/index.html
COPY www/b2b/index.php /var/www/html/b2b/index.php
# COPY www/ /var/www/html

EXPOSE 80
