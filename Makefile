build:
	@docker-compose build
.PHONY: build

up:
	@docker-compose up -d
.PHONY: up

down:
	@docker-compose down --remove-orphans
.PHONY: clean

start:
	@docker-compose start
.PHONY: start

stop:
	@docker-compose stop
.PHONY: stop

composer:
	@docker-compose exec app composer install
.PHONY: composer

laravel-init:
	@docker-compose exec app composer create-project laravel/laravel name-of-the-project
.PHONY: laravel-init

node-init: nvm-install npm-install
.PHONY: node-init

npm-install: 
	@npm install
.PHONY:npm-install

nvm-install:
	@nvm install 18.16
	@nvm use 18.16
.PHONY:nvm-install