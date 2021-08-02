FROM php:8.0-apache
WORKDIR /var/html

COPY www/index.html index.html
COPY site-available/ /etc/apache2/site-available
COPY b2b/   b2b
EXPOSE 80