FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

# Mise à jour système
RUN apt-get update && apt-get upgrade -y && DEBIAN_FRONTEND=noninteractive 
RUN apt update 

# Installation de bind9
RUN apt-get install -y bind9
RUN apt-get install -y dnsutils
RUN apt-get install -y bind9utils
RUN apt-get install -y bind9-doc

# Activation de IPv4
RUN sed -i 's/OPTIONS=.*/OPTIONS="-4 -u bind"/' /etc/default/bind9

# On copie les fichier de configuration
COPY externe/db.tm1-5.ephec-ti.be /etc/bind/
COPY externe/named.conf /etc/bind/
COPY externe/named.conf.local /etc/bind/
COPY externe/named.conf.options /etc/bind/

# Ouverture du port 53
EXPOSE 53

CMD named -g
