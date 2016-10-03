FROM gotchas/pharo-base
MAINTAINER CAs

WORKDIR /opt
RUN curl get.pharo.org/50+vm | bash

CMD ["/opt/pharo","Pharo.image","--no-quit"]

ADD ./*.st .
RUN ./pharo Pharo.image st --save --quit ./CAs-ProxyEnv.st
# RUN ./pharo Pharo.image get GitFileTree
RUN echo "Pharo & GitFileTree installed"
