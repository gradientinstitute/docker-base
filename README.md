# docker-base
Base Docker images

[![CircleCI](https://circleci.com/gh/gradientinstitute/docker-base.svg?style=svg)](https://circleci.com/gh/gradientinstitute/docker-base)


This repo contains the base image(s) for various Gradient Institute projects.
It is designed to be used with our CI tool, CircleCI. See the config.yml this
repo for details.


## Overview

The repo has images based on arch linux. At the moment, the only image is
'python' which contains the very basic requirements for python projects.

## Builds and Tags

With the CI system, the images are built, then tagged according to the
shortened hash of the current commit. This is to ensure that someone updating
this repo does not break projects elsewhere. The command used to get the
shortened hash is

  $ git log -1 --pretty=%h

## Using these Images

ALWAYS REFER TO A SPECIFIC TAG OF THESE IMAGES.

eg FROM blah/python:93e34 not blah/python or blah/python:latest. Python latest
is updated for development convenience only.

You don't want the image changing under your project without you realising!!


## Where are these images stored?

On our (private) gcloud repo, asia.gcr.io/ongoing-236000. To pull them in other 
projects that project will need gooogle storage read access.


## Running locally

The scripts in this repo are intended to be run by the CI. Build them locally if
you like, but to push them you'll need to be able to authenticate docker, which
will require you to have the service account json. Speak to your local sysadmin
if this is something you want to do.
