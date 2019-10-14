FROM manticoresearch/manticore

RUN apt-get update && \
  apt-get install -y python python-pip bash && \
  python --version && \
  pip install https://github.com/joh/when-changed/archive/master.zip


#Update bash prompt
ARG BASH_PS1
ENV BASH_PS1 ${BASH_PS1}
RUN echo 'export PS1='$BASH_PS1 | sed s/HOSTNAME/manticore/ >> ~/.bashrc
RUN ls -lh /var/run
RUN echo '********************************************************'

ENV DEBIAN_FRONTEND newt

RUN when-changed /etc/sphinxsearch/sphinx.conf 'indexer --all --verbose --rotate' &


EXPOSE 9306
EXPOSE 9308
EXPOSE 9312
