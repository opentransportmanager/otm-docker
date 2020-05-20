all: clone up composer-install env

clone:
	-git clone --branch dev https://github.com/opentransportmanager/otm-api.git
	-git clone --branch dev https://github.com/opentransportmanager/otm-passenger-client.git

composer-install:
	docker-compose exec php-fpm composer install

npm-install:
	docker-compose exec node-passenger npm install

up:
	docker-compose up -d

stop:
	docker-compose stop

env:
	cp ./otm-api/.env.example ./otm-api/.env
	docker-compose exec php-fpm php artisan key:generate