docker rm -f $(docker ps -a -q)
docker rmi -f $(docker images -a -q)
docker volume rm $(docker volume ls -q)
docker system prune -a --force
rm -rf /home/${USER}/data
mkdir -p /home/${USER}/data/wordpress
mkdir -p /home/${USER}/data/mariadb
