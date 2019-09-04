.PHONY: build-docker
build-docker:
	docker-compose build --pull

.PHONY: start
start: 
	docker-compose up -d && docker-compose logs -f php nginx

.PHONY: stop
stop: 
	docker-compose stop

.PHONY: purge
purge: 
	docker-compose down --volumes && sudo rm -rf .data

.PHONY: shell
shell: 
	docker-compose exec php bash

.PHONY: test
test: 
	docker-compose exec php phpunit
