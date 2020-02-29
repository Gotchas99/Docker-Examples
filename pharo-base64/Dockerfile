# gotchas/pharo-base64
FROM debian:9
#FROM ubuntu:16.04
#FROM ubuntu:14.04
MAINTAINER CAs

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/debian/9/prod.list > /etc/apt/sources.list.d/mssql-release.list

RUN apt-get update -q
RUN ACCEPT_EULA=Y apt-get -qy --no-install-recommends install \
	libfreetype6 \
        curl \
	libcurl3-gnutls \
	libcairo2 \
	unixodbc \
	msodbcsql17 \
        unzip \
	ca-certificates \
	git \
	iputils-ping \
	nano \
	telnet \
	mssql-tools

RUN apt-get clean \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
	&& echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile \
	&& echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc

#CMD ["/opt/pharo","Pharo.image","--no-quit"]
CMD ["./pharo-run","--no-quit"]

RUN echo "Dependencies for Pharo are installed"
