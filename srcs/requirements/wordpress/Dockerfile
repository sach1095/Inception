FROM debian:buster

EXPOSE 9000

RUN apt-get update -y
RUN apt-get install wget -y
RUN apt-get install php-fpm -y
RUN apt-get install php-mysqlnd -y

COPY ./tools/start.sh ./
COPY ./tools/wp-config.php ./
COPY ./tools/www.conf ./
# COPY ./tools/www.conf /etc/php/7.3/fpm/pool.d/www.conf

# RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# RUN chmod +x wp-cli.phar
# RUN mv wp-cli.phar /usr/local/bin/wp

# RUN mkdir -p /run/php
ENTRYPOINT sh start.sh
# wp --allow-root core install --path=/var/www/wordpress --url=sbaranes.42.fr --title=Sacha_Inception --admin_user=sbaranes --admin_password=lol --admin_email=sbaranes@42.com
# wp --allow-root core download --path=/var/www/wordpress
