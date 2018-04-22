#!/bin/bash
###not used currently
#curl get.pharo.org/64/61+vmI | bash
umask 0002
curl get.pharo.org/64/61+vmT | bash

ls -la
./pharo-run --version
./pharo-run st --save --quit ./CAs-ProxyEnv.st
./pharo-run --version
## ./pharo-run st --save --quit ./CAs-IceBerg.st
## ./pharo-run get GitFileTree
ls -la
#chmod -R g=u Pharo* pharo*