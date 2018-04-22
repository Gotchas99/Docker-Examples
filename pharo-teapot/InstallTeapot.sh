#!/bin/bash
###not used currently
umask 0002
./pharo-run get Teapot 
./pharo-run get XMLParser
./pharo-run get XMLWriter 
# ./pharo-run get NeoJSON
#chmod -R g=u Pharo* pharo* .config
echo "Teapot installed"

# Neo-Console (used from Telnet)
./pharo-run config http://www.smalltalkhub.com/mc/SvenVanCaekenberghe/Neo/main ConfigurationOfNeoConsole --install=stable 
./pharo-run eval --save 'NeoConsoleTelnetServer new start'
echo "NeoConsole installed"

#RFB
./pharo-run config http://www.smalltalkhub.com/mc/PharoExtras/RFB/main ConfigurationOfRFB --install=stable
echo "RFB installed"

rm -fr pharo-local