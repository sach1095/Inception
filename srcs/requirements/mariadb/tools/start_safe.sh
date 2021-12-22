if [ ! -d "/tmp/true" ]; then
	mysql_install_db
    service mysql start
    mysql < create_db.sql
	mkdir /tmp/true

fi

service mysql start && /usr/bin/mysqld_safe --datadir=/usr/bin/mysql
exec mysqld -u root -proot --datadir="/usr/bin/mysql"
