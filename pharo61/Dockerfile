FROM gotchas/pharo-base64-vnc
MAINTAINER CAs

RUN groupadd mygroup && useradd -m -g mygroup myuser
USER myuser
WORKDIR /home/myuser
RUN mkdir .vnc \
  && chmod go-rx .vnc \
  && if [ -f /opt/vncpasswd ]; then cp /opt/vncpasswd .vnc/passwd; chmod 0600 .vnc/passwd; fi 

RUN curl http://get.pharo.org/64/61+vmT | bash

ADD ./*.st ./
RUN ./pharo Pharo.image st --save --quit ./CAs-ProxyEnv.st
# RUN ./pharo Pharo.image st --save --quit ./CAs-IceBerg.st
RUN ./pharo Pharo.image get GitFileTree
RUN echo "Pharo installed"
