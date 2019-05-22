FROM bitnami/minideb:stretch

LABEL maintainer="Mahmoud Zalt <mahmoud@zalt.me>"

COPY run-certbot.sh /root/certbot/run-certbot.sh



RUN apt-get update
RUN apt-get -y install software-properties-common dirmngr apt-transport-https lsb-release ca-certificates
#RUN apt-get install add-apt-repository
RUN add-apt-repository -y ppa:certbot/certbot
RUN apt-get install -y letsencrypt python-certbot-nginx ufw

#RUN ufw allow 80




ENTRYPOINT bash -c "bash /root/certbot/run-certbot.sh && sleep infinity"
