build-image:
	docker build -t toshiykst/golang-app .

push-image:
	docker push toshiykst/golang-app:latest
