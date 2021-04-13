minikube addons enable metallb;
minikube addons enable metrics-server;
minikube addons enable dashboard;
eval $(minikube docker-env)
kubectl apply -f srcs/metallb.yaml
docker build -t nginx_service srcs/nginx/
docker build -t wp_service srcs/wordpress/
docker build -t mysql_service srcs/mysql/
docker build -t php_service srcs/phpmyadmin/
docker build -t influxdb_service srcs/influxdb/
docker build -t telegraf_service srcs/telegraf/
docker build -t grafana_service srcs/grafana/
docker build -t ftps_service srcs/ftps/
kubectl apply -f srcs/yaml_work/
minikube dashboard
