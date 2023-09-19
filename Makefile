# Variables
PROJECT_NAME ?= $(shell bash -c 'read -p "Name of your project: " project; echo $$project')

# Functions
init: build up composer key node-init
.PHONY: init

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

key:
	@docker-compose exec app php artisan key:generate
.PHONY:key

laravel-init:
	@docker-compose exec app composer create-project laravel/laravel $(PROJECT_NAME)
.PHONY: laravel-init

node-init: nvm-install npm-install run-dev
.PHONY: node-init

npm-install: 
	@npm install
.PHONY:npm-install

nvm-install:
	@nvm install 18.16
	@nvm use 18.16
.PHONY:nvm-install

run-dev:
	@npm run dev
.PHONY: run-dev
