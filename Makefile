#! /usr/bin/make -f

build:
	docker-compose build

up:
	docker-compose up

down:
	docker-compose down

requirements:
	pipenv lock -r > requirements.txt

test:
	docker-compose run --rm web pytest . -vv