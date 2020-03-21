DOCKER_TAG ?= grimsdottir

.PHONY: run-dev
run-dev: build
	docker run --rm -it -v /home/bill/container_storage/grimsdottir:/home/grimsdottir --name $(DOCKER_TAG)-container $(DOCKER_TAG)

.PHONY: build
build:
	docker build -t $(DOCKER_TAG) .
