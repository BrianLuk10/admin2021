FROM php:7.2-apache

RUN apt-get update -y
RUN apt-get install nano -y
RUN docker-php-ext-install pdo pdo_mysql


COPY sites-available/ /etc/apache2/sites-available
COPY www/ /var/www/html

RUN a2ensite www.conf
RUN a2ensite b2b.conf
# RUN service apache2 reload

EXPOSE 80
