minikube addons enable metallb;
minikube addons enable metrics-server;
minikube addons enable dashboard;
eval $(minikube docker-env)
kubectl apply -f metallb.yaml
docker build -t nginx_service nginx/
docker build -t wp_service wordpress/
docker build -t mysql_service mysql/
docker build -t php_service phpmyadmin/
kubectl apply -f yaml_work/
minikube dashboard
