docker rm $(docker ps -a -f status=exited)

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

docker rmi $(docker images -a)
