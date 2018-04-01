set IMG=gotchas/pharo61
SET OPTS=
set PX=http://172.22.64.1:3128
::set PX=http://pxgot5.srv.volvo.com:8080
::set PX=http://153.112.38.30:8080
set OPTS=%OPTS%  --build-arg http_proxy="%PX%" --build-arg https_proxy="%PX%" 
set OPTS=%OPTS% --force-rm --no-cache
docker build %OPTS%  -t %IMG% %1 .
IF %ERRORLEVEL% NEQ 0 GOTO END
docker push %IMG%
:END