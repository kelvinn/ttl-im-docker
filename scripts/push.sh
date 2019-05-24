#!/bin/sh

# Abort the script if any command fails
set -e

docker login -u $DOCKER_USER -p $DOCKER_PASS
docker tag ttl-im-docker zephell/ttl-im-docker:1.1.$TRAVIS_BUILD_DIR
docker push zephell/ttl-im-docker:1.1.$TRAVIS_BUILD_DIR
