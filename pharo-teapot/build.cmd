::docker build --build-arg http_proxy="http://httppxgot.srv.volvo.com:8080" --build-arg https_proxy="http://httppxgot.srv.volvo.com:8080" -t gotchas/pharo-teapot .
docker build --force-rm --build-arg http_proxy="http://172.22.64.1:3128" --build-arg https_proxy="http://172.22.64.1:3128" -t gotchas/pharo-teapot --no-cache .
docker push gotchas/pharo-teapot