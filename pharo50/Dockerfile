FROM ubuntu:14.04
MAINTAINER CAs

RUN dpkg --add-architecture i386
RUN apt-get update -q
RUN apt-get -qy --no-install-recommends install libx11-6:i386 \
        libgl1-mesa-glx:i386 \
        libfontconfig1:i386 \
        libssl1.0.0:i386 \
        curl \
        unzip

RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /opt
RUN curl get.pharo.org/50+vm | bash

CMD ["/opt/pharo","Pharo.image","--no-quit"]

RUN ./pharo Pharo.image get GitFileTree
RUN echo "Pharo & GitFileTree installed"
