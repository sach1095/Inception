wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp-cli
cd /usr/local/bin/ && wget https://fr.wordpress.org/wordpress-5.7-fr_FR.tar.gz && tar xvf wordpress-5.7-fr_FR.tar.gz
cd ../../../
cp -r /usr/local/bin/wordpress /var/www
chown -Rv www-data: /var/www/
sleep 10
cp wp-config.php var/www/wordpress
