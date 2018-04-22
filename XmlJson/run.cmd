set IMG=mavenqa.got.volvo.net:18444/gdsp/xmljson
docker pull %IMG%
: docker run -d --rm -p 1702:1701 -p 5901:5901 %IMG%
docker run -it --rm -p 1702:1701 -p 5901:5901 -p 5902:5902 %IMG%