FROM mariadb:latest

LABEL maintainer="Mahmoud Zalt <mahmoud@zalt.me>"

COPY my.cnf /etc/mysql/conf.d/my.cnf

RUN echo 'export PS1="\[\e[32m\]\u@\[\e[m\]\[\e[32m\]mariadb:\[\e[m\]\[\e[34m\]\w\[\e[m\]\\$ "' >> ~/.bashrc

CMD ["mysqld"]

EXPOSE 3306
