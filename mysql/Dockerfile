FROM alpine:3.11.6
RUN apk update
RUN apk upgrade
RUN apk add --no-cache mariadb mariadb-client openrc
RUN	 mkdir -p /run/mysqld/
#RUN	 chown -R mysql /run/mysqld
COPY srcs/create_db.sql .
COPY srcs/my.cnf /etc
COPY srcs/my_db.sql	.
WORKDIR /
COPY setup.sh .
#RUN	chmod +x setup.sh
EXPOSE  3306
ENTRYPOINT ["sh", "setup.sh"]
