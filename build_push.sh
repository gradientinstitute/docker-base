#!/bin/bash -e

IMAGE_NAME=python
FULL_NAME=asia.gcr.io/ongoing-236000/${IMAGE_NAME}
TAG=$(git log -1 --pretty=%h)
BRANCH=$(git rev-parse --abbrev-ref HEAD)

echo "full name: $FULL_NAME"
echo "tag: $TAG"
echo "branch: $BRANCH"

echo "building..."
docker build -t ${IMAGE_NAME} ./python

if [[ "$BRANCH" = "master" ]] || [[ "$BRANCH" = "develop"  ]]; then

  echo "tagging and pushing..."
  docker tag ${IMAGE_NAME} ${FULL_NAME}:${TAG}
  docker tag ${IMAGE_NAME} ${FULL_NAME}:latest

  docker push ${FULL_NAME}:${TAG}
  docker push ${FULL_NAME}:latest

fi




