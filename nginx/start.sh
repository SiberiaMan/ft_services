minikube addons enable metallb;
minikube addons enable metrics-server;
minikube addons enable dashboard;
eval $(minikube docker-env)
kubectl apply -f metallb.yaml
docker build -t nginx_service .
kubectl apply -f nginx.yaml
minikube dashboard
