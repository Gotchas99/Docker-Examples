FROM gotchas/pharo-base
MAINTAINER CAs

RUN groupadd mygroup && useradd -m -g mygroup myuser
WORKDIR /home/myuser
#WORKDIR /opt
RUN curl get.pharo.org/50+vm | bash

#CMD ["/opt/pharo","Pharo.image","--no-quit"]
CMD ["./pharo","Pharo.image","--no-quit"]

ADD ./*.st .
RUN ./pharo Pharo.image st --save --quit ./CAs-ProxyEnv.st
# RUN ./pharo Pharo.image get GitFileTree
RUN echo "Pharo & GitFileTree installed"
