FROM mariadb:latest

LABEL maintainer="Mahmoud Zalt <mahmoud@zalt.me>"

COPY my.cnf /etc/mysql/conf.d/my.cnf

#Update bash prompt
ARG BASH_PS1
ENV BASH_PS1 ${BASH_PS1}
RUN if [ -n ${BASH_PS1}  ]; then \
  env && \
  echo 'export PS1="'$BASH_PS1' "' | sed s/HOSTNAME/mariadb/ >> ~/.bashrc \
;fi

CMD ["mysqld"]

EXPOSE 3306
