start:
	php artisan serve

install:
	composer install

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down

docker-build:
	sudo docker-compose up --build -d

perm:
	sudo chown ${USER}:${USER} bootstrap/cache -R
	sudo chown ${USER}:${USER} storage -R

test:
	docker exec sicknote_php-cli_1 vendor/bin/phpunit --color=always

assets-install:
	docker exec sicknote_node_1 yarn install

assets-dev:
	docker exec sicknote_node_1 yarn run dev

assets-watch:
	docker exec sicknote_node_1 yarn run watch
