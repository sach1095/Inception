CREATE DATABASE $MYSQL_DATABASE DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
CREATE USER "$MYSQL_USER"@"%" IDENTIFIED BY "$MYSQL_PASSWORD";
GRANT ALL PRIVILEGES ON wordpress.* TO "$MYSQL_USER"@"%";
FLUSH PRIVILEGES;