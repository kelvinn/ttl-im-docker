#!/bin/sh

# Abort the script if any command fails
set -e

docker build -t ttl-im-worker .
docker run ttl-im-worker python tests.py
