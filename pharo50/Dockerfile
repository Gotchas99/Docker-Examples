FROM gotchas/pharo-base
MAINTAINER CAs

WORKDIR /opt
RUN curl get.pharo.org/50+vm | bash

CMD ["/opt/pharo","Pharo.image","--no-quit"]

RUN ./pharo Pharo.image st --save --quit ../pharo5.0/CAs-ProxyEnv.st
# RUN ./pharo Pharo.image get GitFileTree
RUN echo "Pharo & GitFileTree installed"
