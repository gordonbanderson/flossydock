FROM manticoresearch/manticore

RUN apt-get -y update && apt-get -y upgrade && apt-get install -y cron

COPY cron/reindex-cron-job /root/
COPY cron/crontab /etc/cron.d/reindex_task

# Get an exec format error if this is not set correctly
# Cron also fails if dashes used
RUN chmod 0644 /etc/cron.d/reindex_task

#Update bash prompt
ARG BASH_PS1
ENV BASH_PS1 ${BASH_PS1}
RUN echo 'export PS1='$BASH_PS1 | sed s/HOSTNAME/manticore/ >> ~/.bashrc


ENV DEBIAN_FRONTEND newt

#RUN service cron start &

EXPOSE 9306
EXPOSE 9308
EXPOSE 9312

COPY entrypoint.sh /root/entrypoint.sh
RUN chmod 700 /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]
#CMD tail -f /dev/null
