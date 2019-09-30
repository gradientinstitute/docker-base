#!/bin/bash
gcloud auth activate-service-account --key-file=${GCLOUD_SERVICE_KEY}
gcloud --quiet config set project ${GOOGLE_PROJECT_ID}
gcloud --quiet config set compute/zone ${GOOGLE_COMPUTE_ZONE}
gcloud auth configure-docker
