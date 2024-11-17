#########################################
##### container ctrl commands ##
init:
	$(MAKE) startup

build:
	docker compose build

startup:
	docker compose up -d --remove-orphans

stop:
	docker compose stop

restart:
	$(MAKE) stop
	$(MAKE) startup