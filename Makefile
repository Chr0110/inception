all: up
up:
	docker-compose -f srcs/docker-compose.yml up -d --build
build:	
		docker-compose -f srcs/docker-compose.yml build
down:
		docker-compose -f srcs/docker-compose.yml down --rmi all --volumes --remove-orphans
clean: down
fclean: clean
		rm -rf /home/eradi-/data/wordpress/*
		rm -rf /home/eradi-/data/mariadb/*		
re: fclean all
