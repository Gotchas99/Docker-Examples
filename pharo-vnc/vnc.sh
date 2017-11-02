#!/bin/bash

# Remove VNC lock (if process already killed)
rm /tmp/.X1-lock /tmp/.X11-unix/X1
# copy vnc config & set permissions
mkdir .vnc 
chmod 0700 .vnc 
cp vncpasswd .vnc/passwd 
chmod 0600 .vnc/passwd
# Run VNC server with tail in the foreground
vncserver :1 -geometry 1280x800 -depth 24
# && tail -F /root/.vnc/*.log #to keep the container from terminating because the CMD did.
set DISPLAY=:1

./pharo-ui -vm-display-X11 --display :1 Pharo.image --no-quit