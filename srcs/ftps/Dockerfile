FROM	alpine:3.11.6

RUN		apk update
RUN		apk upgrade
# change password for root
RUN		echo "root:root" | chpasswd
RUN		apk add vsftpd openssl && \
		openssl req -x509 -nodes -days 365 \
		-newkey rsa:2048 -subj "/C=US/ST=WA/L=Washington DC/O=Administration\
		OU=student/emailAddress=kek@kek.us/CN=my_server.com" \
		-keyout /etc/ssl/private/vsftpd.key \
		-out /etc/ssl/certs/vsftpd.crt

COPY	/srcs/vsftpd.conf			/etc/vsftpd/vsftpd.conf
COPY	/srcs/setup.sh				.

EXPOSE	21 21000

CMD		["sh", "setup.sh"]
