FROM ubuntu:18.04

# Mise à jour système
RUN apt-get update && apt-get upgrade -y && DEBIAN_FRONTEND=noninteractive 
RUN apt update 

# Installation de bind9
RUN apt-get install -y bind9
RUN apt-get install -y dnsutils
RUN apt-get install -y bind9utils
RUN apt-get install -y bind9-doc

RUN sed -i 's/OPTIONS=.*/OPTIONS="-4 -u bind"/' /etc/default/bind9

# On copie les fichier de configuration
COPY db.woodytoys.local /etc/bind/db.woodytoys.local
COPY named.conf /etc/bind/named.conf
COPY named.conf.local /etc/bind/named.conf.local
COPY 17.172.in-addr.arpa /etc/bind/17.172.in-addr.arpa

# Ouverture du port 53
EXPOSE 53/udp 53/tcp
