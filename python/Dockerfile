# As a matter of course, when updating this grab the latest arch image
# but USE AN EXPLICIT DIGEST (get from their dockerhub page) so that 
# an image can't change without a new commit in this repo
FROM archlinux/base@sha256:9a482a9509a3eeb0571c0ccddccdc981cebe46e38861426f33a851dc504f7c4d

MAINTAINER Lachlan McCalman <lachlan@gradientinstitute.org>

ENV EDITOR="/usr/bin/true" \
    LC_ALL="en_AU.UTF-8" \
    LANG="en_AU.UTF-8"

RUN echo "en_AU.UTF-8 UTF-8" > /etc/locale.gen \
    && locale-gen \
    && echo "LANG=en_AU.UTF-8" > /etc/locale.conf \
    && pacman --noconfirm -Syyu \
    && pacman --noconfirm -S \
    make \
    git \
    openssh \
    wget \
    openblas \
    python-pip \
    python-virtualenv \
    python-pipenv \
    && pacman --noconfirm -Scc

# https://pythonspeed.com/articles/activate-virtualenv-dockerfile/
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m virtualenv --python=/usr/bin/python3 $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
