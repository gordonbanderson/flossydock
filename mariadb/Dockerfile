FROM mariadb:latest

LABEL maintainer="Mahmoud Zalt <mahmoud@zalt.me>"

COPY my.cnf /etc/mysql/conf.d/my.cnf
RUN echo 'test' && env

#Optional override for mysql conf
ADD my.cnf /etc/mysql/conf.d/my.cnf

#Update bash prompt
ARG BASH_PS1
ENV BASH_PS1 ${BASH_PS1}
RUN echo 'export PS1='$BASH_PS1 | sed s/HOSTNAME/mariadb/ >> ~/.bashrc

#Update db prompt
ARG MYSQL_PS1
ENV MYSQL_PS1 ${MYSQL_PS1}
RUN echo 'export MYSQL_PS1='$MYSQL_PS1 | sed s/HOSTNAME/mariadb/ >> ~/.bashrc



# @todo MariaDB prompt

CMD ["mysqld"]

EXPOSE 3306
