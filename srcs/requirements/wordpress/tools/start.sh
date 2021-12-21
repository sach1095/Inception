mkdir var/www
mkdir var/www/wordpress

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp-cli

sed -i 's/MYSQL_DATABASE/'${MYSQL_DATABASE}'/g' wp-config.php
sed -i 's/MYSQL_USER/'${MYSQL_USER}'/g' wp-config.php
sed -i 's/MYSQL_PASSWORD/'${MYSQL_PASSWORD}'/g' wp-config.php
sed -i 's/MYSQL_HOST/'${MYSQL_HOST}'/g' wp-config.php
cp wp-config.php var/www/wordpress

cd var/www/wordpress
wp-cli core download --allow-root
wp-cli core install --url=${DOMAIN_NAME} --title=${WP_TITLE} --admin_user=${MYSQL_USER} --admin_password=${MYSQL_PASSWORD} --admin_email=${WP_MAIL} --allow-root
#	--user=${WP_EDITOR_USER} --user_password=${WP_EDITOR_PASSWORD} --user_email=${WP_EDITOR_EMAIL} --role=author
cd ../../..
cp www.conf etc/php/7.3/fpm/pool.d
service php7.3-fpm start
service php7.3-fpm stop
php-fpm7.3 -F -R
