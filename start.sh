minikube addons enable metallb;
minikube addons enable metrics-server;
minikube addons enable dashboard;
eval $(minikube docker-env)
kubectl apply -f metallb.yaml
docker build -t nginx_service nginx/
docker build -t wp_service wordpress/
docker build -t mysql_service mysql/
docker build -t php_service phpmyadmin/
docker build -t influxdb_service influxdb/
docker build -t telegraf_service telegraf/
docker build -t grafana_service grafana/
kubectl apply -f yaml_work/
minikube dashboard
