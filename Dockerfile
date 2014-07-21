# Marathon
#
# VERSION       1

FROM thefactory/mesos

MAINTAINER Mike Babineau mike@thefactory.com

# Download Marathon
ADD http://downloads.mesosphere.io/marathon/marathon-0.6.1/marathon-0.6.1.tgz /tmp/marathon.tgz
RUN mkdir -p /opt/marathon && tar xzf /tmp/marathon.tgz -C /opt/marathon --strip=1 && rm -f /tmp/marathon.tgz

USER root
EXPOSE 8080

ENTRYPOINT ["/opt/marathon/bin/start"]
