#! /bin/bash

mvn clean
# maven package
mvn package
docker build -t arloor/proxyserver:1.0 .
mvn clean
#上传到我的docker hub（其他用户没密码不行的
docker push arloor/proxyserver:1.0
docker run  -it -p  8080:8080 --rm arloor/proxyserver:1.0