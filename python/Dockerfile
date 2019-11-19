# As a matter of course, when updating this grab the latest arch image
# but USE AN EXPLICIT DIGEST (get from their dockerhub page) so that 
# an image can't change without a new commit in this repo
FROM archlinux/base@sha256:09962d8061f0e001049d3a3432e9e8290bea7ec7f8536c139cfeb0cc93db2862

MAINTAINER Lachlan McCalman <lachlan@gradientinstitute.org>

ENV EDITOR="/usr/bin/true" \
    LC_ALL="en_AU.UTF-8" \
    LANG="en_AU.UTF-8"

RUN echo "en_AU.UTF-8 UTF-8" > /etc/locale.gen \
    && locale-gen \
    && echo "LANG=en_AU.UTF-8" > /etc/locale.conf \
    && pacman --noconfirm -Syyu \
    && pacman --noconfirm -S \
    base-devel \
    make \
    sudo \
    git \
    openssh \
    which \
    wget \
    openblas \
    python-pip \
    python-virtualenv \
    python-pipenv \
    && useradd -m -s /bin/bash aur  \
    && passwd -d aur \
    && echo "aur ALL=(ALL) ALL" > /etc/sudoers.d/aur \
    && echo 'Defaults env_keep += "EDITOR"' >> /etc/sudoers.d/aur \
    && mkdir -p /tmp/build /home/aur \
    && chown -R aur:aur /tmp/build \
    && chown -R aur:aur /home/aur \
    && cd /tmp/build \
    && sudo -u aur wget https://aur.archlinux.org/cgit/aur.git/snapshot/yay-bin.tar.gz \
    && sudo -u aur tar -xzvf yay-bin.tar.gz \
    && cd /tmp/build/yay-bin \
    && sudo -u aur makepkg --skippgpcheck --noconfirm -si
    

RUN sudo -u aur yay --answerdiff=None --removemake --noconfirm -S python36 \
    && pacman --noconfirm -Scc

