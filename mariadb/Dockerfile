FROM mariadb:latest

LABEL maintainer="Mahmoud Zalt <mahmoud@zalt.me>"

RUN echo 'test' && env

ADD my.cnf /etc/mysql/conf.d/my.cnf
RUN echo 'test 5'

#Update bash prompt
ARG BASH_PS1
ENV BASH_PS1 ${BASH_PS1}
RUN echo ' echo 'export PS1="'$BASH_PS1' "''
RUN env

RUN if [ -n ${BASH_PROMPT_FILE}  ]; then \
  env && \
  echo 'export PS1='$BASH_PS1 | sed s/HOSTNAME/mariadb/ >> ~/.bashrc \
;fi

CMD ["mysqld"]

EXPOSE 3306


#In container during build
# BASH_PS1=$'\[\e[31m\]\u@\[\e[m\]\[\e[31m\]HOSTNAME \xe2\x88\xb4 prod:\[\e[m\]\[\e[34m\]\w\[\e[m\]\\$ '
# Can simulate this way: BASH_PS1="$'\[\e[31m\]\u@\[\e[m\]\[\e[31m\]HOSTNAME \xe2\x88\xb4 prod:\[\e[m\]\[\e[34m\]\w\[\e[m\]\\$ '", same result in env

