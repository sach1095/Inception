cd var/www/wordpress
wp-cli core download --allow-root
wp-cli core install --url=DOMAIN_NAME --title=WP_TITLE --admin_user=MYSQL_USER --admin_password=MYSQL_PASSWORD --admin_email=WP_MAIL --allow-root
# wp user create ${USER_NAME} ${EMAIL_ADDRESS} --user_pass=${USER_PASSWORD} --role=subscriber --allow-root
chmod 777 /var/www
cd ../../..
mkdir -p /run/php
