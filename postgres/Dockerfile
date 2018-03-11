FROM postgres:alpine

MAINTAINER Ben M <git@bmagg.com>

RUN echo 'export PS1="\[\e[32m\]\u@\[\e[m\]\[\e[32m\]postgres:\[\e[m\]\[\e[34m\]\w\[\e[m\]\\$ "' >> ~/.bashrc

CMD ["postgres"]

EXPOSE 5432
