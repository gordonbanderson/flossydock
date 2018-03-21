FROM memcached:latest

LABEL maintainer="Mahmoud Zalt <mahmoud@zalt.me>"

# @todo FIX, there is no /home/memcached directory

USER root
ARG BASH_PS1
ENV BASH_PS1 ${BASH_PS1}
RUN echo 'export PS1='$BASH_PS1 | sed s/HOSTNAME/memcached/ >> /.bashrc

USER memcache

CMD ["memcached"]

EXPOSE 11211
