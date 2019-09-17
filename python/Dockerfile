FROM archlinux/base:latest

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
    && pacman --noconfirm -Scc

# https://pythonspeed.com/articles/activate-virtualenv-dockerfile/
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m virtualenv --python=/usr/bin/python3 $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
