# README

[![Build Status](https://snap-ci.com/kelvinn/ttl-im-docker/branch/master/build_image)](https://snap-ci.com/kelvinn/ttl-im-docker/branch/master)

Ping an IP and send the result to stated.io for graphing.

The following two environment variables need to be set:

STATED_APIKEY
MY_IP

I hijacked the pure python ping module; details in the header.

You can find this on Docker Hub here: https://hub.docker.com/r/zephell/ttl-im-docker/