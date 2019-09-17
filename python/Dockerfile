FROM archlinux/base:latest

MAINTAINER Lachlan McCalman <lachlan@gradientinstitute.org>

ENV EDITOR="/usr/bin/true" \
    LC_ALL="en_AU.UTF-8" \
    LANG="en_AU.UTF-8"

RUN echo "en_AU UTF-8" > /etc/locale.gen \
    && echo "LANG=en_AU.UTF-8" > /etc/locale.conf \
    && locale-gen \
    && pacman --noconfirm -Syyu \
    && pacman --noconfirm -S \
    base-devel \
    git \
    ssh \
    wget \
    openblas \
    python-pip \
    python-virtualenv \
    python-virtualenvwrapper \
    && pacman --noconfirm -Scc \
    && export WORKON_HOME=~/.virtualenvs \
    && source /usr/bin/virtualenvwrapper.sh \
    && mkdir $WORKON_HOME
