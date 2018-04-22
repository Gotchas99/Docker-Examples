set IMG=gotchas/pharo-teapot
docker pull %IMG%
SET OPTS=-it --rm 
SET OPTS=%OPTS% -p 1702:1701 -p 5901:5901
set PX=http://172.22.64.1:3128
::set PX=http://pxgot5.srv.volvo.com:8080
::set PX=http://153.112.38.30:8080
set OPTS=%OPTS% -e http_proxy="%PX%" -e https_proxy="%PX%" 

docker run %OPTS%  %IMG% %1 

:END