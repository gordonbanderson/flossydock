FROM mdillon/postgis:latest

LABEL maintainer="Mahmoud Zalt <mahmoud@zalt.me>"

RUN echo 'export PS1="\[\e[32m\]\u@\[\e[m\]\[\e[32m\]postgis:\[\e[m\]\[\e[34m\]\w\[\e[m\]\\$ "' >> ~/.bashrc

CMD ["postgres"]

EXPOSE 5432
