set IMG=gotchas/pharo80x64
set OPTS=--force-rm --no-cache --squash
set PX=http://host.docker.internal:3128
set OPTS=%OPTS%  --build-arg http_proxy="%PX%" --build-arg https_proxy="%PX%" 
docker build %OPTS%  -t %IMG% %1 .
IF %ERRORLEVEL% NEQ 0 GOTO END
docker push %IMG%
:END
