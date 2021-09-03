all: up
prepare:
	#checking for dependencies
	@sudo apt-get update
	@sudo apt install -y docker.io
	@sudo apt install -y docker-compose
	@sudo systemctl enable --now docker

up: prepare
	#starting container
	@#!/bin/bash
	@if [ ! -d docker ]; then\
		mkdir docker;\
		if [ ! -d www ]; then\
			cd docker;\
			mkdir www && cd ../../ ;\
		fi ;\
	fi
	@sudo cp ./index.php ./docker/www/;
	@sudo docker-compose up -d --build
	@echo "\nWaiting.......\n" #waiting may take around 20 seconds


teardown: down
	@echo "\n Removing files\n"
	@sudo rm -rf ./docker

down:
	@echo"\n Stopping services now...  \n"
	@sudo docker-compose down
