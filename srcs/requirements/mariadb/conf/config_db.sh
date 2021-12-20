#MYSQL
service mysql start && mysql < create_db.sql

/usr/bin/mysqld_safe --datadir=/usr/bin/mysql
exec mysqld -u root -proot --datadir="/usr/bin/mysql"
exec /usr/sbin/mysqld
