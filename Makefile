dev:
	skaffold dev

build-image:
	docker build -t toshiykst/golang-app .

push-image:
	docker push toshiykst/golang-app:latest

deploy-image:
	make build-image
	make push-image
