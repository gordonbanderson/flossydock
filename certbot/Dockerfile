FROM bitnami/minideb:buster

LABEL maintainer="Mahmoud Zalt <mahmoud@zalt.me>"


RUN apt-get update
RUN apt-get -y install software-properties-common dirmngr apt-transport-https lsb-release ca-certificates
#RUN apt-get install add-apt-repository
#RUN add-apt-repository -y ppa:certbot/certbot
#RUN apt-get update
RUN cat /etc/issue && uname -r
RUN apt-get install -y letsencrypt python-certbot-nginx ufw
RUN find /etc/apt
#RUN cat /etc/apt/sources.list.d/certbot-ubuntu-certbot-focal.list
RUN apt update
RUN apt upgrade

RUN dpkg-query -l | grep certbot

RUN apt-get autoremove

#RUN ufw allow 80
COPY run-certbot.sh /root/certbot/run-certbot.sh



ENTRYPOINT bash -c "bash /root/certbot/run-certbot.sh"
