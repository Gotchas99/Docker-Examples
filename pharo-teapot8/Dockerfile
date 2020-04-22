# gotchas/pharo-teapot8
FROM gotchas/pharo80x64
MAINTAINER Christer Assmundsson

EXPOSE 1701
RUN ./pharo-run get XMLParser && rm -fr pharo-local
# Load prereqs from Github
ADD ./*.st ./scripts/
RUN ./pharo-run st --save --quit scripts/load_prereqs.st  && rm -fr pharo-local
RUN echo "Teapot installed"

# Neo-Console (used from Telnet)
RUN ./pharo-run config http://www.smalltalkhub.com/mc/SvenVanCaekenberghe/Neo/main ConfigurationOfNeoConsole --install=stable && rm -fr pharo-local
RUN ./pharo-run eval --save 'NeoConsoleTelnetServer new start'

# RFB
# EXPOSE 5902
# RUN ./pharo-run config http://www.smalltalkhub.com/mc/PharoExtras/RFB/main ConfigurationOfRFB --install=stable && rm -fr pharo-local
# RUN rm -fr pharo-local
