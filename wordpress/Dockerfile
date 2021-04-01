FROM alpine:3.11.6

RUN apk add axel
RUN apk add php7 php7-fpm php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session
RUN apk add nginx tar
RUN mkdir /www 
RUN	mkdir -p /run/nginx 

COPY nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /www
RUN axel https://wordpress.org/latest.tar.gz -o latest.tar.gz
RUN tar -xvf latest.tar.gz
RUN rm latest.tar.gz

WORKDIR /

COPY wp-config.php /www/wordpress/
COPY start_wp.sh .

EXPOSE 5050

ENTRYPOINT ["sh", "start_wp.sh"]
