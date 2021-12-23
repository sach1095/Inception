if [ ! -d "/tmp/ok" ]; then
	mysql_install_db
	service mysql start
	echo "UPDATE mysql.user SET plugin = 'mysql_native_password' WHERE User = 'root';" | mysql -u root
	echo "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('root');" | mysql -u root
	echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci" | mysql -u root -proot
	echo "GRANT ALL ON *.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" | mysql -u root -proot
	echo "FLUSH PRIVILEGES;" | mysql -u root -proot
	mkdir /tmp/ok

fi

cd '/usr' ; /usr/bin/mysqld_safe --datadir='/var/lib/mysql'
