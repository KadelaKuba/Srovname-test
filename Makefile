help:
	@ echo "Usage: make <target>\n"
	@ echo "Available targets:\n"
	@ cat Makefile | grep -oE "^[^: ]+:" | grep -oE "[^:]+" | grep -Ev "help|default|.PHONY"

run:
	docker-compose up -d

stop:
	docker-compose down

container-bash:
	docker-compose exec srovname-php-fpm bash

build-dev:
	docker-compose exec srovname-php-fpm composer build-dev

standards:
	docker-compose exec srovname-php-fpm composer standards

standards-fix:
	docker-compose exec srovname-php-fpm composer standards-fix

phpstan:
	docker-compose exec srovname-php-fpm composer phpstan

check-all:
	docker-compose exec srovname-php-fpm composer check-all

migrations-diff:
	docker-compose exec srovname-php-fpm composer migrations-diff

migrations-migrate:
	docker-compose exec srovname-php-fpm composer migrations-migrate
