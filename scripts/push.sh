#!/bin/sh

# Abort the script if any command fails
set -e

docker login -e $DOCKER_EMAIL -u $DOCKER_USER -p $DOCKER_PASS
docker tag ttl-im-docker zephell/ttl-im-docker:1.1.$SEMAPHORE_BUILD_NUMBER
docker push zephell/ttl-im-docker:1.1.$SEMAPHORE_BUILD_NUMBER
