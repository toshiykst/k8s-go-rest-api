dev:
	skaffold dev

build-image:
	docker build -t toshiykst/golang-app .

push-image:
	docker push toshiykst/golang-app:latest

release-image:
	make build-image
	make push-image

deploy:
ifeq ($(env),)
	@echo "The target env name is required."
		@echo "Example:"
		@echo "    $ make deploy env=<dev or stg or prod>"
else
	kubectl apply -k k8s/overlays/${env}
endif
