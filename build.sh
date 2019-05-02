#!/bin/bash
set -e
NUM=$1

docker build --pull -t drpebcak/slaughterhouse:$NUM -f Dockerfile .
docker push drpebcak/slaughterhouse:$NUM
