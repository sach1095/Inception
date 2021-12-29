FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install mariadb-server -y

COPY ./tools/50-server.cnf ./etc/mysql/mariadb.conf.d
COPY ./tools/create_env.sh ./
COPY ./tools/start.sh ./
COPY ./tools/create_db.sql ./

ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

RUN sh create_env.sh
RUN sh start.sh

CMD mysqld_safe
