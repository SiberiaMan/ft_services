FROM    alpine:3.11.6
RUN     apk add nginx openrc supervisor wget
RUN     apk add php7 php7-fpm php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session
RUN     mkdir -p /run/nginx
RUN     mkdir /www
RUN     wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz
RUN     tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz
RUN     mv phpMyAdmin-5.0.2-all-languages /www/phpmyadmin
RUN     rm phpMyAdmin-5.0.2-all-languages.tar.gz
COPY    srcs/nginx.conf /etc/nginx/conf.d/default.conf
COPY    srcs/config.inc.php /www/phpmyadmin/
#COPY    srcs/supervisord.conf /etc/supervisord.conf
COPY    setup.sh .
EXPOSE  5000
CMD     ["sh","setup.sh"]
