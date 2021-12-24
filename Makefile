COMPOSE = srcs/docker-compose.yml

all : up

up :
	@ docker-compose -f $(COMPOSE) up -d --build

down :
	@ docker-compose -f $(COMPOSE) down

clean: down
	sh srcs/tools/clean.sh

fclean: down
	sh srcs/tools/delete_all.sh

prune:
	docker system prune -a --force

.PHONY: all up down clean fclean prune
