#!/bin/bash

echo 'Building Dockerfile with image name fast-dit'
export DOCKER_BUILDKIT=1
docker build \
    --build-arg UID=$(id -u ${USER}) \
    --build-arg GID=1234 \
    -t fast-dit \
    -f Dockerfile \
    .
