FROM	alpine:3.11.6
RUN		apk update
RUN		apk upgrade
RUN		apk add wget
RUN		wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.1_static_linux_amd64.tar.gz
RUN		tar -xvf telegraf-1.16.1_static_linux_amd64.tar.gz
RUN		cp -r ./telegraf-1.16.1/* .
CMD		telegraf
