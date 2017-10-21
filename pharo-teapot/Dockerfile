# gotchas/pharo-teapot
#FROM gotchas/pharo-rfb
FROM gotchas/pharo61
MAINTAINER Christer Assmundsson

EXPOSE 1701

RUN ./pharo Pharo.image get Teapot
chmod -R g=u /opt
RUN echo "Teapot installed"
