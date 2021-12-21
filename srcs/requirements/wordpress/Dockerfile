FROM debian:buster

RUN apt-get update -y
RUN apt-get install wget -y
RUN apt-get install php-fpm -y
RUN apt-get install php-mysqlnd -y

COPY ./tools/start.sh ./
COPY ./tools/wp-config.php ./
COPY ./tools/www.conf ./

ENTRYPOINT sh start.sh
