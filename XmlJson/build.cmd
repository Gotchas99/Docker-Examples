docker build --build-arg http_proxy="http://httppxgot.srv.volvo.com:8080" --build-arg https_proxy="http://httppxgot.srv.volvo.com:8080" -t gotchas/xmljson .


: docker login mavenqa.got.volvo.net:18444
docker tag gotchas/xmljson mavenqa.got.volvo.net:18444/gdsp/xmljson
docker push mavenqa.got.volvo.net:18444/gdsp/xmljson

docker tag mavenqa.got.volvo.net:18444/gdsp/xmljson gotchas/xmljson 
docker push gotchas/xmljson
