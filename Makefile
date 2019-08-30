.EXPORT_ALL_VARIABLES:

NAME=p1c2u/statsd-graphite-cloudwatch
STATSD_VERSION=0.8.5
CLOUDWATCH_BACKEND_VERSION=1.2.0

build:
	@docker build -t ${NAME} --build-arg statsd_version=${STATSD_VERSION} --build-arg cloudwatch_backend_version=${CLOUDWATCH_BACKEND_VERSION} .

push:
	@docker push ${NAME}
