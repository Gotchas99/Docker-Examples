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

RUN echo "Dependencies for Pharo are installed"
