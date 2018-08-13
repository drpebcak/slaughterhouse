#!/bin/bash
set -e
NUM=$1

docker build --pull -t tayworm/slaughterhouse:$NUM -f Dockerfile .
docker push tayworm/slaughterhouse:$NUM
