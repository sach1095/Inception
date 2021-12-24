if [ ! -d "/tmp/ok" ]; then
	mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
	service mysql start

	SECURE_MYSQL=$(expect -c "
set timeout 2
spawn mysql_secure_installation
expect \"Enter current password for root (enter for none):\"
send \"\r\"
expect \"Change the root password?\"
send \"y\r\"
expect \"New password:\"
send \"$MYSQL_ROOT_PASSWORD\r\"
expect \"Re-enter new password:\"
send \"$MYSQL_ROOT_PASSWORD\r\"
expect \"Remove anonymous users?\"
send \"y\r\"
expect \"Disallow root login remotely?\"
send \"n\r\"
expect \"Remove test database and access to it?\"
send \"y\r\"
expect \"Reload privilege tables now?\"
send \"y\r\"
expect eof
")
	echo "$SECURE_MYSQL"

	echo

	readonly Q1="CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci"
	readonly Q2="GRANT ALL ON *.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
	readonly Q3="CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY 'MYSQL_PASSWORD';"
	readonly Q4="FLUSH PRIVILEGES;"
	readonly SQL="${Q1}${Q2}${Q3}${Q4}"
	$MYSQL -uroot -p$MYSQL_ROOT_PASSWORD -e "$SQL"
	mkdir /tmp/ok

fi

cd '/usr' ; /usr/bin/mysqld_safe --datadir='/var/lib/mysql'
