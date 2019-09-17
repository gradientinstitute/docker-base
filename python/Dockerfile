FROM archlinux/base:latest

MAINTAINER Lachlan McCalman <lachlan@gradientinstitute.org>

ENV EDITOR="/usr/bin/true" \
    LC_ALL="en_AU.UTF-8" \
    LANG="en_AU.UTF-8" \
    WORKON_HOME="~/.virtualenvs"

RUN echo "en_AU UTF-8" > /etc/locale.gen \
    && echo "LANG=en_AU.UTF-8" > /etc/locale.conf \
    && locale-gen \
    && pacman --noconfirm -Syyu \
    && pacman --noconfirm -S \
    make \
    pkgconf \
    util-linux \
    gzip \
    git \
    ssh \
    wget \
    openblas \
    python-pip \
    python-virtualenv \
    python-virtualenvwrapper \
    && pacman --noconfirm -Scc

RUN /usr/bin/virtualenvwrapper.sh 
RUN mkdir $WORKON_HOME
