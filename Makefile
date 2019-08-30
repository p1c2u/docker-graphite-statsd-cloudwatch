.EXPORT_ALL_VARIABLES:

NAME=p1c2u/statsd-graphite-cloudwatch
CLOUDWATCH_BACKEND_VERSION=1.2.0

build:
	@docker build -t ${NAME} --build-arg cloudwatch_backend_version=${CLOUDWATCH_BACKEND_VERSION} .

push:
	@docker push ${NAME}
