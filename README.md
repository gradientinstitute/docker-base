# docker-public
Public docker images

[![CircleCI](https://circleci.com/gh/gradientinstitute/docker-public.svg?style=svg)](https://circleci.com/gh/gradientinstitute/docker-public)


## Building

You will have to authenticate docker using the command

  $ gcloud auth configure-docker

on your local machine.

Then to build (e.g. the python image):

  $ docker build -t asia.gcr.io/ongoing-236000/python ./python

And to push:

  $ docker push asia.gcr.io/ongoing-236000/python


## Notes

These images are currently built automatically by CircleCI, and stored
in our ongoing project in gcloud, in the asia container registry.

CircleCI is being authenticated by a service account set up in gcloud for this
purpose.


