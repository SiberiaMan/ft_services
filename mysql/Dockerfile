FROM alpine:3.11.6
RUN apk update
RUN apk upgrade
RUN apk add --no-cache mariadb mariadb-client openrc
RUN	 mkdir -p /run/mysqld/
RUN	 chown -R mysql /run/mysqld
COPY create_db.sql .
COPY my.cnf /etc
COPY my_db.sql	.
WORKDIR /
COPY setup.sh .
RUN	chmod +x setup.sh
EXPOSE  3306
ENTRYPOINT ["sh", "setup.sh"]
