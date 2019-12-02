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
	if [ -d "node_modules" ]; then sudo chown ${USER}:${USER} node_modules
	if [ -d "public/build" ]; then sudo chown ${USER}:${USER} public/build

test:
	docker-compose exec php-cli vendor/bin/phpunit --color=always

assets-install:
	docker-compose exec node yarn install

assets-dev:
	docker-compose exec node yarn run dev

assets-watch:
	docker-compose exec node yarn run watch
