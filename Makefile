build-image:
	docker build -t toshiykst/k8s-golang-app .

push-image:
	docker push toshiykst/k8s-golang-app:latest
