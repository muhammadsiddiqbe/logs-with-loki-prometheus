PROJECT_NAME=monit

deploy:
	docker stack deploy --compose-file=docker-compose.yml ${PROJECT_NAME}

down-ls:
	docker service ls | grep 0/1 | grep ${PROJECT_NAME}

ls:
	docker service ls | grep ${PROJECT_NAME}