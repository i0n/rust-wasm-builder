SHELL := /bin/bash
NAME := rust-wasm-builder
CONTAINER_NAME := i0nw/${NAME}
RUST_VERSION := 1.68.2

print-version:
	@echo $(RUST_VERSION)

docker-build:
	docker build . -t ${CONTAINER_NAME}:latest
	docker tag ${CONTAINER_NAME}:latest ${CONTAINER_NAME}:$(RUST_VERSION)

docker-push:
	docker push ${CONTAINER_NAME}:latest
	docker push ${CONTAINER_NAME}:$(RUST_VERSION)

clean:
	rm -rf target dist

# This will stop make linking directories with these names to make commands
.PHONY: all test clean
