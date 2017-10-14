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
RUN mkdir $HOME/.vnc \
  && cat password.txt password.txt | vncpasswd -f > $HOME/.vnc/passwd \
  && rm password.txt \
  && chmod 600 $HOME/.vnc/passwd

# Expose VNC port
EXPOSE 5901

# Copy VNC script that handles restarts
COPY vnc.sh /opt

RUN chmod u+x /opt/vnc.sh
CMD ["/opt/vnc.sh"]
