FROM alpine:3.11.6

RUN apk add axel
RUN apk add php7 php7-fpm php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session php7-ctype
RUN apk add nginx tar openrc supervisor
RUN mkdir /www
RUN mkdir -p /run/nginx

COPY srcs/nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /www
RUN axel https://wordpress.org/latest.tar.gz -o latest.tar.gz
RUN tar -xvf latest.tar.gz
RUN rm latest.tar.gz

WORKDIR /
COPY srcs/wp-config.php /www/wordpress/
COPY srcs/supervisord.conf /etc/
COPY setup.sh .

EXPOSE 5050

ENTRYPOINT ["sh", "setup.sh"]
