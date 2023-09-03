build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

list:
	docker-compose ps

enter:
	docker exec -it $(name) /bin/bash

php:
	docker-compose exec php /bin/bash

apache:
	docker-compose exec apache /bin/bash

mysql:
	docker-compose exec mysql /bin/bash

pgsql:
	docker-compose exec pgsql /bin/bash
