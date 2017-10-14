FROM gotchas/pharo-base64-vnc
MAINTAINER CAs

RUN groupadd mygroup && useradd -m -g mygroup myuser
USER myuser
WORKDIR /home/myuser
#WORKDIR /opt
RUN curl http://get.pharo.org/64/61+vmT | bash

ADD ./*.st .
RUN ./pharo Pharo.image st --save --quit ./CAs-ProxyEnv.st
# RUN ./pharo Pharo.image get GitFileTree
RUN echo "Pharo & GitFileTree installed"
