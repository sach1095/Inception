if [ ! -d "/tmp/true" ]; then
	mysql_install_db
    service mysql start
    mysql < create_db.sql
	mkdir /tmp/true

fi

mysqld
