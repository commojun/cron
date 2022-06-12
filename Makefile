build:
	docker compose build --no-cache --force-rm

up:
	docker compose up -d

down:
	docker compose down

logs:
	docker compose logs -f

refresh: down build up

restart:
	docker compose restart cron

shell:
	docker compose exec cron bash

buildx:
	docker buildx build \
		-t commojun/cron:latest \
		--platform linux/amd64,linux/arm64,linux/arm/v7,linux/arm/v6 \
		--push \
		.
