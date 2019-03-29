# This is a managed image from google that will be automatically udated
# with security patches
FROM marketplace.gcr.io/google/ubuntu1804:latest

MAINTAINER Lachlan McCalman <lachlan@gradientinstitute.org>

ENV DEBIAN_FRONTEND noninteractive
# ENV PIPENV_VENV_IN_PROJECT=1

RUN apt-get update \
  && apt-get install -y \
  libopenblas-dev \
  python3-pip \
  && pip3 install pipenv \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 

