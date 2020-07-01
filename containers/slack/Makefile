APP=logstash
VERSION=7.7.0
NAMESPACE=logstash
LOCAL_LOG_DIR=~/Documents/Github/slack-api-functions/logs
LOGSTASH_LOCAL_DIR=/var/feeds/azure
REGISTRY=${NAMESPACE}
DOCKER_PROCESSES := $(shell docker ps -aq)
DOCKER_IMAGES := $(shell docker images -aq)
DOCKER_SERVICE_NAME=Azure

build:
	docker build -t ${APP}:${VERSION} .

run:
	docker run -d --memory=2G --cpus=2 --name ${DOCKER_SERVICE_NAME} -v ${LOCAL_LOG_DIR}:${LOGSTASH_LOCAL_DIR} ${APP}:${VERSION}

run_interactive:
	docker run --rm -ti --memory=2G --cpus=2 --name ${DOCKER_SERVICE_NAME} ${APP}:${VERSION} /bin/bash

stop:
	docker stop ${DOCKER_PROCESSES}

remove:
	docker rm ${DOCKER_PROCESSES}

remove_instances:
	docker rmi ${DOCKER_IMAGES}

logs:
	docker logs -f ${DOCKER_PROCESSES}
