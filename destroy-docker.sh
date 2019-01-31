#!/usr/bin/env bash

set -o errexit
set -o errtrace
set -o nounset
set -o pipefail

DOCKER_PROCESSES=$(docker ps -a -q)

if [[ -z "$DOCKER_PROCESSES" ]]; then
  echo "No running docker processes"
else
  docker stop $DOCKER_PROCESSES
  docker rm $DOCKER_PROCESSES
fi

DOCKER_IMAGES=$(docker images -q)

if [[ -z "$DOCKER_IMAGES" ]]; then
  echo "No docker images found"
else
  docker rmi $DOCKER_IMAGES
fi
