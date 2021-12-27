FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx -y
RUN apt-get install openssl -y

COPY ./tools/default ./
COPY ./tools/nginx.conf ./
COPY ./tools/start.sh ./

ENTRYPOINT sh start.sh
