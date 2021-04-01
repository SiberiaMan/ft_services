kubectl delete --all svc
kubectl delete --all deployments
sleep 3
docker rm -f $(docker ps -a | grep "nginx_service" | awk '{print $1}')
docker rm -f $(docker ps -a | grep "wp_service" | awk '{print $1}')
docker rm -f $(docker ps -a | grep "mysql_service" | awk '{print $1}')
sleep 1
docker rmi nginx_service
docker rmi wp_service
docker rmi mysql_service
