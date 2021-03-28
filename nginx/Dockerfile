FROM		alpine:3.11.6
RUN			apk update
RUN			apk add openssl
RUN			apk add nginx
RUN			apk add openrc --no-cache

RUN 		mkdir -p /run/nginx
RUN			mkdir /etc/nginx/ssl && chmod 700 /etc/nginx/ssl && \
			openssl req -x509 \
			-days 3650 \
			-newkey rsa:2048 -nodes \
			-keyout /etc/ssl/nginx.key \ 
			-out /etc/ssl/nginx.crt \
			-subj "/C=US/ST=WA/L=Washington DC/O=Administration\
			OU=student/emailAddress=kek@kek.us/CN=my_server.com"
RUN			mkdir /www
COPY		srcs/nginx.conf /etc/nginx/conf.d/dchani.conf
COPY		/srcs/index.html	/www
COPY		/srcs/setup.sh		/.

CMD			["sh", "setup.sh"]

EXPOSE		80 443
