Skip to content
 
Search or jump to…

Pull requests
Issues
Marketplace
Explore
 
@Gotchas99 
1
0 0 Gotchas99/Docker-Examples
 Code  Issues 0  Pull requests 0  Projects 0  Wiki  Insights  Settings
Docker-Examples/pharo61/Dockerfile
@v0c0056 v0c0056 cmd and docker updates
8bedebe on Apr 22, 2018
@Gotchas99 @v0c0056
46 lines (38 sloc)  1.04 KB
    
# gotchas/pharo61
FROM gotchas/pharo-base64
#FROM gotchas/pharo-base64-vnc
MAINTAINER CAs

#ENV http_proxy ${http_proxy}

#Setup user and permissions
RUN chgrp -R 0 /opt && \
    chmod -R g=u /opt && \
	chmod g+s /opt
#TEMP
#RUN apt-get update && apt-get install nano

WORKDIR /opt
# Note: this file needs to have Linux End-of-line (LF)
ADD pharo-run .
RUN ls -la
RUN chmod ug+x pharo-run
	
RUN adduser --disabled-password --gid 0 --gecos "MyUser" myuser
USER myuser
# RUN chmod -R u+w,g+w /home/myuser
WORKDIR /opt
ENV HOME=/opt

# this VM is currently not compatible with IceBerg. use 61+vmT for that
ADD *.conf /etc/security/limits.d/
#ADD InstallPharo.sh .
#RUN ./InstallPharo.sh

#RUN curl get.pharo.org/64/61+vmI | bash
RUN  umask 0002 &&\
	curl get.pharo.org/64/61+vmT | bash

ADD ./*.st ./
RUN ls -la
RUN ./pharo-run --version
RUN ./pharo-run st --save --quit ./CAs-ProxyEnv.st
RUN ./pharo-run --version
## RUN ./pharo-run st --save --quit ./CAs-IceBerg.st
## RUN ./pharo-run get GitFileTree
RUN ls -la
#RUN chmod -R g=u Pharo* pharo*
RUN echo "Pharo installed"
© 2019 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About
