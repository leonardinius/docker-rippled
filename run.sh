#!/bin/bash

set -e

IMAGE=local-rippled
NAME=rippled

docker build -t ${IMAGE} .

docker run \
  -it \
  --rm \
  -p 51235:51235 \
  -p 5005:5005 \
  -p 5006:5006 \
  --name ${NAME} \
  ${IMAGE}

