Runs a [Marathon](https://github.com/mesosphere/marathon/) instance.

Available on the Docker Index as [thefactory/marathon](https://index.docker.io/u/thefactory/marathon/):

    docker pull thefactory/marathon

### Versions
* Marathon 0.7.4
* Mesos 0.20.1

### Usage
For Marathon to register with the Mesos cluster, you will need to enable host networking with `--net=host` (available in Docker 0.11+, see [announcement](http://blog.docker.io/2014/05/docker-0-11-release-candidate-for-1-0/)).

Starting the container:

    docker run \
        --net=host \
        -p 8080:8080 \
        thefactory/marathon:latest \
        [MARATHON_OPTIONS]

(See Marathon's [documentation](https://github.com/mesosphere/marathon/README.md) for available arguments)

Once the container is up, visit `http://<host>:8080/` and confirm Marathon is running.
