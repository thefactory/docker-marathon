# Marathon

FROM thefactory/mesos:0.21.1

MAINTAINER Mike Babineau mike@thefactory.com

# Download Marathon
ADD http://downloads.mesosphere.io/marathon/v0.8.0/marathon-0.8.0.tgz /tmp/marathon.tgz
RUN mkdir -p /opt/marathon \
	&& tar xzf /tmp/marathon.tgz -C /opt/marathon --strip=1 \
	&& rm -f /tmp/marathon.tgz

USER root
EXPOSE 8080

ENTRYPOINT ["/opt/marathon/bin/start"]
