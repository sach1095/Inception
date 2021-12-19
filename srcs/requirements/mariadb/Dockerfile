FROM debian:buster

EXPOSE 3306

ARG MYSQL_ROOT \
	MYSQL_USER \
	MYSQL_PASSWORD \
	MYSQL_DATABASE \
	MYSQL_ROOT_PASSWORD

ENV MYSQL_ROOT $MYSQL_ROOT
ENV MYSQL_USER $MYSQL_USER
ENV MYSQL_PASSWORD $MYSQL_PASSWORD
ENV MYSQL_DATABASE $MYSQL_DATABASE
ENV MYSQL_ROOT_PASSWORD $MYSQL_ROOT_PASSWORD

RUN apt-get -y update
RUN apt-get install -y mariadb-server mariadb-client wget
RUN wget -O /usr/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64
RUN chmod +x /usr/bin/dumb-init

COPY conf/start.sh ./
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/mariadb-server.cnf /etc/mysql/mariadb.conf.d/

RUN chown -R mysql:mysql /var/lib/mysql
RUN chmod 777 /var/lib/*
RUN chmod 777 start.sh
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["bash", "start.sh"]
CMD ["mysqld"]
