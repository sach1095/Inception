cd var/www/wordpress
wp-cli core download --allow-root
wp-cli core install --url=DOMAIN_NAME --title=WP_TITLE --admin_user=MYSQL_USER --admin_password=MYSQL_PASSWORD --admin_email=WP_MAIL --allow-root
wp --allow-root --path=/var/www/wordpress user create USER_NAME EMAIL_ADDRESS --role=author --user_pass=USER_PASSWORD
chmod 777 /var/www
cd ../../..
mkdir -p /run/php
