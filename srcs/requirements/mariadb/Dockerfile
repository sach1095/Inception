FROM debian:buster

EXPOSE 3306

RUN apt-get update && apt-get upgrade -y
RUN apt-get install mariadb-server mariadb-client -y
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/50-server.cnf ./etc/mysql/mariadb.conf.d
COPY ./tools/create_env.sh ./
COPY ./tools/start_safe.sh ./
COPY ./tools/create_db.sql ./

ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

RUN sh create_env.sh

# CMD mysqld && sh start_safe.sh
