sed -i 's/MYSQL_DATABASE/'${MYSQL_DATABASE}'/g' wp-config.php
sed -i 's/MYSQL_USER/'${MYSQL_USER}'/g' wp-config.php
sed -i 's/MYSQL_PASSWORD/'${MYSQL_PASSWORD}'/g' wp-config.php
sed -i 's/MYSQL_HOST/'${MYSQL_HOST}'/g' wp-config.php

sed -i 's/DOMAIN_NAME/'${DOMAIN_NAME}'/g' create_wp.sh
sed -i 's/WP_TITLE/'${WP_TITLE}'/g' create_wp.sh
sed -i 's/MYSQL_USER/'${MYSQL_USER}'/g' create_wp.sh
sed -i 's/MYSQL_PASSWORD/'${MYSQL_PASSWORD}'/g' create_wp.sh
sed -i 's/WP_MAIL/'${WP_MAIL}'/g' create_wp.sh
