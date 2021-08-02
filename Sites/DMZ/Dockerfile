FROM php:8.0-apache
WORKDIR /var/html

RUN apt-get update
RUN apt-get install nano

COPY www/index.html index.html
COPY sites-available/ /etc/apache2/sites-available
COPY b2b/   b2b
EXPOSE 80