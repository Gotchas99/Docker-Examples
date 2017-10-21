# gotchas/xmljson
FROM gotchas/pharo-teapot
MAINTAINER Christer Assmundsson

RUN ./pharo Pharo.image config http://www.smalltalkhub.com/mc/Gotchas/Jobb/main ConfigurationOfXmlJson --install=development

#temp:
CMD ["./pharo","Pharo.image","--no-quit"]

chmod -R g=u /opt
RUN echo "XmlJson installed"
