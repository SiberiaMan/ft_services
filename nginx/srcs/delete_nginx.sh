kubectl delete svc/nginx
kubectl delete deployments/nginx
sleep 3
docker stop $(docker ps -a | grep "nginx_service" | awk '{print $1}')
docker rm $(docker ps -a | grep "nginx_service" | awk '{print $1}')
sleep 1
docker rmi nginx_service
