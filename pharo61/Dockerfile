# gotchas/pharo61
FROM gotchas/pharo-base64-vnc
MAINTAINER CAs

#Setup user and permissions
RUN chgrp -R 0 /opt && \
    chmod -R g=u /opt

RUN adduser --disabled-password --gid 0 --gecos "MyUser" myuser
USER myuser
RUN chmod -R u+w,g+w /home/ipython
WORKDIR /opt
ENV HOME=/opt

RUN mkdir .vnc \
  && chmod go-rx .vnc \
  && if [ -f /opt/vncpasswd ]; then cp /opt/vncpasswd .vnc/passwd; chmod 0600 .vnc/passwd; fi 

RUN curl http://get.pharo.org/64/61+vmT | bash

ADD ./*.st ./
RUN ./pharo Pharo.image st --save --quit ./CAs-ProxyEnv.st
# RUN ./pharo Pharo.image st --save --quit ./CAs-IceBerg.st
RUN ./pharo Pharo.image get GitFileTree
RUN echo "Pharo installed"
