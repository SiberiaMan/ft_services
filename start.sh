minikube addons enable metallb;
minikube addons enable metrics-server;
minikube addons enable dashboard;
eval $(minikube docker-env)
kubectl apply -f yaml/metallb.yaml
docker build -t nginx_service nginx/
docker build -t wp_service wordpress/
docker build -t mysql_service mysql/
kubectl apply -f yaml
minikube dashboard
