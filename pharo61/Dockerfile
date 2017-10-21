# gotchas/pharo61
FROM gotchas/pharo-base64-vnc
MAINTAINER CAs

#Setup user and permissions
RUN chgrp -R 0 /opt && \
    chmod -R g=u /opt
WORKDIR /opt
RUN adduser --disabled-password --gid 0 --gecos "MyUser" myuser
USER myuser
RUN chmod -R u+w,g+w /home/myuser
ENV HOME=/opt

RUN mkdir .vnc \
	&& chmod 0700 .vnc \
	&& cp vncpasswd .vnc/passwd \
	&& chmod 0600 .vnc/passwd

RUN curl http://get.pharo.org/64/61+vmT | bash

ADD ./*.st ./
RUN ./pharo Pharo.image st --save --quit ./CAs-ProxyEnv.st
# RUN ./pharo Pharo.image st --save --quit ./CAs-IceBerg.st
RUN ./pharo Pharo.image get GitFileTree
RUN echo "Pharo installed"
