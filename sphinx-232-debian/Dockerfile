FROM ubuntu:16.04

RUN apt-get update -y

#Allow for mysql, postgresql and xml imports
RUN apt-get -y install wget libmysqlclient20 libodbc1 unixodbc libpq5 libexpat1 postgresql-client
RUN wget http://sphinxsearch.com/files/sphinxsearch_2.3.2-beta-1~xenial_amd64.deb
RUN dpkg -i sphinxsearch_2.3.2-beta-1~xenial_amd64.deb && rm sphinxsearch_2.3.2-beta-1~xenial_amd64.deb

#Update bash prompt
ARG BASH_PS1
ENV BASH_PS1 ${BASH_PS1}

#Forward to docker log collector, finalise bash
#RUN ln -sf /dev/stdout /var/log/sphinxsearch/searchd.log \
#    && ln -sf /dev/stdout /var/log/sphinxsearch/query.log \
RUN echo 'export PS1='$BASH_PS1 | sed s/HOSTNAME/sphinxsearch/ >> ~/.bashrc

#Todo valid conf file to start with

CMD ["tail", "-f", "/dev/null"]
