FROM graphiteapp/graphite-statsd:latest
LABEL maintainer="Artur Maciag <maciag.artur@gmail.com>"

WORKDIR /opt

# install statsd (as we have to use this ugly way)
ARG cloudwatch_backend_version=1.2.0
RUN npm install aws-cloudwatch-statsd-backend@"${cloudwatch_backend_version}"

WORKDIR /opt/graphite/webapp
