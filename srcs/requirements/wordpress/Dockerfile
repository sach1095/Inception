FROM debian:buster

EXPOSE 9000

RUN apt-get update -y
RUN apt-get install wget -y
RUN apt-get install php7.4-fpm -y
RUN apt-get install php7.4-mysql -y

COPY ./tools/create_wp.sh ./
COPY ./tools/wp-config.php ./
COPY ./tools/download_utils.sh ./

RUN sh download_utils.sh
RUN sh create_wp.sh
RUN sed -i "s/\/run\/php\/php7.4-fpm.sock/0.0.0.0:9000/g" /etc/php/7.4/fpm/pool.d/www.conf && \
	sed -i 's/;clear_env = no/clear_env = no/g' /etc/php/7.4/fpm/pool.d/www.conf && \
	sed -i 's/variables_order = "GPCS"/variables_order = "EGPCS"/g' /etc/php/7.4/fpm/php.ini
RUN mkdir -p /run/php
CMD php-fpm7.4 -F -R
