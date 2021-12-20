FROM debian:buster

EXPOSE 3306

# ARG MYSQL_ROOT \
# 	MYSQL_USER \
# 	MYSQL_PASSWORD \
# 	MYSQL_DATABASE \
# 	MYSQL_ROOT_PASSWORD

# ENV MYSQL_ROOT $MYSQL_ROOT
# ENV MYSQL_USER $MYSQL_USER
# ENV MYSQL_PASSWORD $MYSQL_PASSWORD
# ENV MYSQL_DATABASE $MYSQL_DATABASE
# ENV MYSQL_ROOT_PASSWORD $MYSQL_ROOT_PASSWORD

RUN apt-get -y update
RUN apt-get install -y mariadb-server mariadb-client

RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/mariadb-server.cnf /etc/mysql/mariadb.conf.d/
COPY conf/config_db.sh ./
COPY conf/create_db.sql ./

RUN chown -R mysql:mysql /var/lib/mysql
RUN chmod 777 /var/lib/*

CMD ["bash", "/config_db.sh"]
