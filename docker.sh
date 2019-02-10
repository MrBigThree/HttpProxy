#! /bin/bash

# maven package
mvn package
docker build -t proxyserver:1.0 .
docker run  -it -p 8080:8080 proxyserver:1.0