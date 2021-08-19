FROM ubuntu:18.04

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install gcc make pkg-config build-essential wget libssl-dev libncurses5-dev libnewt-dev  libxml2-dev uuid-dev libsqlite3-dev libjansson-dev libedit-dev -y
RUN apt-get install dnsutils -y
RUN apt-get install nano -y
RUN apt-get install net-tools -y
RUN apt-get install fail2ban -y

RUN mkdir /usr/src/asterisk
WORKDIR /usr/src/asterisk
RUN cd /usr/src/asterisk
RUN ls -al
RUN wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-16-current.tar.gz
RUN tar -xvzf asterisk-16-current.tar.gz
WORKDIR /usr/src/asterisk/asterisk-16.20.0

#RUN cd asterisk-16.20.0
RUN ls -al
RUN ./configure --with-jansson-bundled
RUN make
RUN make install
RUN make samples
RUN make config

COPY . /etc/asterisk

COPY fail2ban/asteriskjail.conf /etc/fail2ban/jail.d/asteriskjail.conf

RUN touch /var/log/asterisk/fail2ban
RUN service asterisk start

EXPOSE 5082 5060/udp
EXPOSE 5082 5060/tcp
