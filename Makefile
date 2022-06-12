build:
	docker compose build --no-cache --force-rm

up:
	docker compose up -d

down:
	docker compose down

logs:
	docker compose logs -f

refresh: down build up

shell:
	docker compose exec cron bash
