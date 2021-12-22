COMPOSE = srcs/docker-compose.yml

all : up

up :
	@ docker-compose -f $(COMPOSE) up -d --build

down :
	@ docker-compose -f $(COMPOSE) down

clean:
	docker-compose -f srcs/docker-compose.yml down

fclean: down
	sh srcs/tools/delete_all.sh

prune:
	docker system prune -a --force

re: fclean up

.PHONY: all up down clean fclean prune
