#!/bin/bash
if [ ! -d "/var/www/wordpress" ]; then
	mkdir -p var/www/wordpress
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar
	mv wp-cli.phar /usr/local/bin/wp
	sed -i 's/MYSQL_DATABASE/'${MYSQL_DATABASE}'/g' wp-config.php
	sed -i 's/MYSQL_USER/'${MYSQL_USER}'/g' wp-config.php
	sed -i 's/MYSQL_PASSWORD/'${MYSQL_PASSWORD}'/g' wp-config.php
	sed -i 's/MYSQL_HOST/'${MYSQL_HOST}'/g' wp-config.php
	cp wp-config.php var/www/wordpress
	wp-cli core download --path=/var/www/wordpress --allow-root
	wp-cli core install --path=/var/www/wordpress --url=${DOMAIN_NAME} --title=${WP_TITLE} --admin_user=${MYSQL_USER} --admin_password=${MYSQL_PASSWORD} --admin_email=${WP_MAIL} --allow-root
	# wp-cli user create --path=/var/www/wordpress ${USER_NAME} ${EMAIL_ADDRESS} --role=author --user_pass=${USER_PASSWORD} --allow-root
	cp www.conf etc/php/7.3/fpm/pool.d
	service php7.3-fpm start
	service php7.3-fpm stop
	fi
php-fpm7.3 -F -R

# if [ ! -d "/var/www/wordpress" ]; then
# 	mkdir -p /var/www/wordpress
# 	wp --allow-root core download --path=/var/www/wordpress
# 	cp wp-config.php var/www/wordpress
# 	chown -Rv www-data: /var/www/
# 	wp --allow-root core install --path=/var/www/wordpress --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$MYSQL_USER --admin_password=$MYSQL_PASSWORD --admin_email=$WP_MAIL
# 	wp --allow-root user create --path=/var/www/wordpress $USER_NAME $EMAIL_ADDRESS --role=$USER_ROLE --user_pass=$USER_PASSWORD
#	# wp --allow-root core install --path=/var/www/wordpress --url=sbaranes.42.fr --title=Sacha_Inception --admin_user=sbaranes --admin_password=lol --admin_email=sbaranes@42.com
# 	# wp --allow-root user create --path=/var/www/wordpress simple simple@42.fr --role=author --user_pass=lol
# 	fi
# php-fpm7.3 -F -R
