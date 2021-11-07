.MAIN: all
all: build up
clean: down
build:
	docker-compose build --no-cache
up:
	docker-compose -f docker-compose-webapp.yml -f docker-compose-mariadb.yml -f docker-compose-mongodb.yml -f docker-compose-rabbitmq.yml -f docker-compose-redis.yml up -d
down:
	docker-compose -f docker-compose-webapp.yml -f docker-compose-mariadb.yml -f docker-compose-mongodb.yml -f docker-compose-rabbitmq.yml -f docker-compose-redis.yml down

