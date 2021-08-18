FROM ubuntu:latest

#installation des outils pour le container docker
RUN apt-get update
RUN apt-get install -y mailutils 
RUN apt-get install -y telnet 
RUN apt-get install -y nano 

#installation postfix
RUN apt-get install -y postfix

#installation dovecot
RUN apt-get install -y dovecot-imapd
RUN apt-get install -y dovecot-pop3d

#copy des configurations postfix adapté
COPY ./postfix/main.cf /etc/postfix/
COPY ./postfix/master.cf /etc/postfix/
COPY ./postfix/virtual /etc/postfix/

#copy des configurations dovecot adapté
COPY ./dovecot/dovecot.conf /etc/dovecot/
COPY ./dovecot/conf.d/10-auth.conf /etc/dovecot/conf.d/

EXPOSE 25

CMD /bin/bash
