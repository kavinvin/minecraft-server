.PHONY: start stop restart logs backup ps

start:
	docker compose up -d

stop:
	docker compose down

restart:
	docker compose down
	docker compose up -d

logs:
	docker compose logs -f

backup:
	docker exec minecraft-backup backup now

ps:
	docker compose ps
