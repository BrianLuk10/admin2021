FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y install asterisk

COPY . /etc/asterisk


EXPOSE 5060 5060/udp
EXPOSE 5060 5060/tcp
EXPOSE 5061 5061/udp
EXPOSE 5061 5061/tcp