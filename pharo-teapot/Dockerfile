#FROM gotchas/pharo-rfb
FROM gotchas/pharo-base64-vnc
MAINTAINER Christer Assmundsson

EXPOSE 1701 5901

RUN ./pharo Pharo.image get Teapot
RUN echo "Teapot installed"
