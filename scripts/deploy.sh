#!/bin/bash

# Abort the script if any command fails
set -e

# Call this like deploy.sh some-name-on-docker-cloud https://some-name.com

TARGET_HOST=$1

virtualenv ~/venv
source ~/venv/bin/activate

dig +short myip.opendns.com @resolver1.opendns.com
