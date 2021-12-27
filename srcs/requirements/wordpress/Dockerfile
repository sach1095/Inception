FROM debian:buster

RUN apt-get update -y
RUN apt-get install wget -y
RUN apt-get install php-fpm -y
RUN apt-get install php-mysqlnd -y

COPY ./tools/start.sh ./
COPY ./tools/wp-config.php ./
COPY ./tools/www.conf ./

RUN wget https://fr.wordpress.org/wordpress-5.7-fr_FR.tar.gz && tar xvf wordpress-5.7-fr_FR.tar.gz

# ENTRYPOINT sh start.sh
