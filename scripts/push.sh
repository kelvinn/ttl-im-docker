#!/bin/sh

# Abort the script if any command fails
set -e

docker login -e $DOCKER_EMAIL -u $DOCKER_USER -p $DOCKER_PASS
docker tag ttl-im-docker zephell/ttl-im-docker:$SNAP_PIPELINE_COUNTER-$SNAP_COMMIT_SHORT
docker push zephell/ttl-im-docker:$SNAP_PIPELINE_COUNTER-$SNAP_COMMIT_SHORT
