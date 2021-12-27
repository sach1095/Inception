#!/bin/bash
# if [ ! -d "/var/www/wordpress" ]; then
# 	mkdir -p var/www/wordpress
# 	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# 	chmod +x wp-cli.phar
# 	mv wp-cli.phar /usr/local/bin/wp-cli
# 	sed -i 's/MYSQL_DATABASE/'${MYSQL_DATABASE}'/g' wp-config.php
# 	sed -i 's/MYSQL_USER/'${MYSQL_USER}'/g' wp-config.php
# 	sed -i 's/MYSQL_PASSWORD/'${MYSQL_PASSWORD}'/g' wp-config.php
# 	sed -i 's/MYSQL_HOST/'${MYSQL_HOST}'/g' wp-config.php
# 	cp wp-config.php var/www/wordpress
# 	cp www.conf etc/php/7.3/fpm/pool.d
# 	service php7.3-fpm start
# 	wp-cli core download --path=/var/www/wordpress --allow-root
# 	wp-cli core install --path=/var/www/wordpress --url=${DOMAIN_NAME} --title=${WP_TITLE} --admin_user=${MYSQL_USER} --admin_password=${MYSQL_PASSWORD} --admin_email=${WP_MAIL} --allow-root
# 	# wp-cli user create --path=/var/www/wordpress ${USER_NAME} ${EMAIL_ADDRESS} --role=author --user_pass=${USER_PASSWORD} --allow-root
# 	service php7.3-fpm stop
# fi
# php-fpm7.3 -F -R



if [ ! -d "/var/www/wordpress" ]; then
	mv wordpress /var/www
	chown -Rv www-data: /var/www/
	wp --allow-root core install --path=/var/www/wordpress --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$MYSQL_USER --admin_password=$MYSQL_PASSWORD --admin_email=$WP_MAIL
	wp --allow-root --path=/var/www/wordpress user create $USER_NAME $EMAIL_ADDRESS --role=$USER_ROLE --user_pass=$USER_PASSWORD
	php-fpm7.3 -F -R
	fi
