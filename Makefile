dev:
	skaffold dev

build-image:
	docker build -t YOUR_REPOSITORY/golang-app .

push-image:
	docker push YOUR_REPOSITORY/golang-app:latest

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
