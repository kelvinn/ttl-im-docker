#!/bin/sh

# Abort the script if any command fails
set -e

docker login -e $DOCKER_EMAIL -u $DOCKER_USER -p $DOCKER_PASS
docker tag ttl-im-docker zephell/ttl-im-docker:$SNAP_COMMIT_SHORT-$SNAP_PIPELINE_COUNTER
docker push zephell/ttl-im-docker:$SNAP_COMMIT_SHORT-$SNAP_PIPELINE_COUNTER
