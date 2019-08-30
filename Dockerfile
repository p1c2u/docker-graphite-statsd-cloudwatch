FROM graphiteapp/graphite-statsd:1.1.5-12
LABEL maintainer="Artur Maciag <maciag.artur@gmail.com>"

WORKDIR /opt

# install cloudwatch backend
ARG cloudwatch_backend_version=1.2.0
RUN npm install aws-cloudwatch-statsd-backend@"${cloudwatch_backend_version}"

WORKDIR /opt/graphite/webapp
