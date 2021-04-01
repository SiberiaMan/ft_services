FROM	alpine:3.11.6

RUN		apk update && apk upgrade
RUN		apk add mariadb mariadb-client openrc

RUN		mkdir "/run/mysqld" && chown -R mysql /run/mysqld

COPY	create_db.sql .
COPY	my.cnf /etc/
COPY	wp_db.sql .
COPY	start_mysql.sh .
RUN		chmod +x start_mysql.sh

EXPOSE	3306

CMD		sh start_mysql.sh
