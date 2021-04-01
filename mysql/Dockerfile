FROM alpine:3.11.6

RUN apk update
RUN apk upgrade
RUN apk add --no-cache mariadb mariadb-client openrc
#RUN adduser -D -g 'mysql' mysql
RUN	 mkdir -p /run/mysqld/
RUN	 chown -R mysql /run/mysqld
#RUN	apk add mariadb mariadb-client

#COPY my.cnf /etc/mysql/my.cnf
COPY create_db.sql .
COPY my.cnf /etc
#COPY my_db.sql /etc/mysql/config.sql
COPY my_db.sql	.

WORKDIR /

COPY setup.sh .
RUN	chmod +x setup.sh

EXPOSE  3306

ENTRYPOINT ["sh", "setup.sh"]
