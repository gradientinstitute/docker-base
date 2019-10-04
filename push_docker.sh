#!/bin/bash

IMAGE_NAME=python
FULL_NAME=asia.gcr.io/ongoing-236000/${IMAGE_NAME}
TAG=$(git log -1 --pretty=%h)


docker tag ${IMAGE_NAME} ${FULL_NAME}:${TAG}
docker tag ${IMAGE_NAME} ${FULL_NAME}:latest

docker push ${FULLNAME}:${TAG}
docker push ${FULLNAME}:latest
