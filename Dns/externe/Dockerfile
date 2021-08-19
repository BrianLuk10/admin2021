#Initialisation à partir d'une image ubuntu
FROM ubuntu:latest

#Installation de bind9 et d'outils supplémentaires au débugging
RUN apt update && apt upgrade -y && apt install bind9 bind9utils dnsutils net-tools -y

#Copie des fichiers d'installations préparé et configuré
COPY named.conf /etc/bind/
COPY named.conf.local /etc/bind/
COPY named.conf.options /etc/bind/
COPY db.tm1-5.ephec-ti.be /etc/bind/
COPY db.tm1-5.ephec-ti.be.signed /etc/bind/

#Exposition des ports de l'image sur le port 53 tcp et udp
EXPOSE 53/udp
EXPOSE 53/tcp

#Commande réalisé au démarage du conteneur
CMD ["named", "-c", "/etc/bind/named.conf", "-g"]
