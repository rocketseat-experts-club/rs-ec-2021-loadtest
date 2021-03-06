api/start:
	docker-compose up -d --build api

api/status:
	docker-compose ps

api/stop:
	docker-compose stop

test/local:
	k6 run tests/loadtest/index.js

test/docker:
	docker-compose run k6 run /tests/loadtest/index.js
