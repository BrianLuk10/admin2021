FROM ubuntu:18.04

RUN apt-get update && apt-get upgrade -y && DEBIAN_FRONTEND=noninteractive 
RUN apt update 

RUN apt-get install -y bind9
RUN apt-get install -y dnsutils
RUN apt-get install -y bind9utils


COPY externe/db.tm1-5.ephec-ti.be /etc/bind/
COPY externe/named.conf /etc/bind/
COPY externe/named.conf.local /etc/bind/
COPY externe/named.conf.options /etc/bind/

EXPOSE 53/udp 
EXPOSE 53/TCP

CMD named -g
