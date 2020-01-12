FROM mdillon/postgis:latest

LABEL maintainer="Mahmoud Zalt <mahmoud@zalt.me>"

RUN apt -y update && apt -y upgrade && apt -y install less
RUN mkdir /root/backups
RUN mkdir /root/scripts

COPY cron/backup /root/scripts/
COPY cron/removeoldbackups /root/scripts/

RUN chmod 700 /root/scripts/backup && chmod 700 /root/scripts/removeoldbackups

RUN echo 'export PS1="\[\e[32m\]\u@\[\e[m\]\[\e[32m\]postgis:\[\e[m\]\[\e[34m\]\w\[\e[m\]\\$ "' >> ~/.bashrc

# Minimise image size
RUN apt -y autoremove

CMD ["postgres"]

EXPOSE 5432
