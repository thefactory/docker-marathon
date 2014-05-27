# Marathon
#
# VERSION       1

FROM thefactory/mesos

MAINTAINER Mike Babineau mike@thefactory.com

# Download Marathon
ADD https://github.com/mesosphere/marathon/archive/marathon-0.5.0.tar.gz /tmp/marathon.tgz
RUN tar xzf /tmp/marathon.tgz -C /opt && rm -f /tmp/marathon.tgz

USER root
EXPOSE 8080

ENTRYPOINT ["/opt/marathon/bin/start"]
