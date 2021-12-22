FROM debian:buster

EXPOSE 9000

RUN apt-get update -y
RUN apt-get install wget -y
RUN apt-get install php-fpm -y
RUN apt-get install php-mysqlnd -y

ARG DOMAIN_NAME
ARG WP_TITLE
ARG WP_MAIL
ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_HOST
ARG MYSQL_ROOT_PASSWORD
ARG USER_NAME
ARG EMAIL_ADDRESS
ARG USER_PASSWORD

COPY ./tools/create_env.sh ./
COPY ./tools/create_wp.sh ./
COPY ./tools/wp-config.php ./
COPY ./tools/www.conf ./etc/php/7.3/fpm/pool.d

RUN sh create_env.sh

RUN mkdir -p var/www/wordpress
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp-cli
RUN cp wp-config.php var/www/wordpress
RUN sh create_wp.sh
CMD php-fpm7.3 -F -R
