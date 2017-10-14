# for running interactive Pharo with VNC
FROM  gotchas/pharo-base64

# Install LXDE, VNC server and Firefox
RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y \
  fluxbox \
#  lxde-core \
  lxterminal \
  tightvncserver

ENV USER root
# Set default password
COPY password.txt .
RUN cat password.txt password.txt | vncpasswd && \
rm password.txt
# Expose VNC port
EXPOSE 5901

# Copy VNC script that handles restarts
COPY vnc.sh /opt

RUN chmod u+x vnc.sh
CMD ["/opt/vnc.sh"]
