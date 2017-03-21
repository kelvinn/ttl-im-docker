# README

[![Build Status](https://semaphoreci.com/api/v1/kelvinism/ttl-im-docker/branches/master/badge.svg)](https://semaphoreci.com/kelvinism/ttl-im-docker)

Ping an IP and send the result to stated.io for graphing.

The following two environment variables need to be set:

STATED_APIKEY
MY_IP

I hijacked the pure python ping module; details in the header.

You can find this on Docker Hub here: https://hub.docker.com/r/zephell/ttl-im-docker/