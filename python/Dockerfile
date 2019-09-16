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
    wget \
    python-pip \
    python-virtualenv \
    python-virtualenvwrapper \
    && useradd -m -s /bin/bash aur  \
    && passwd -d aur \
    && echo 'aur ALL=(ALL) ALL' > /etc/sudoers.d/aur \
    && echo 'Defaults env_keep += "EDITOR"' >> /etc/sudoers.d/aur \
    && mkdir -p /tmp/build /home/aur \
    && chown -R aur:aur /tmp/build \
    && chown -R aur:aur /home/aur \
    && cd /tmp/build \
    && sudo -u aur git clone https://aur.archlinux.org/yay-bin.git \
    && cd yay-bin && sudo -u aur makepkg --skippgpcheck --noconfirm -si && cd .. \
    && sudo -u aur yay -S --noconfirm confd \
    && pip install --upgrade pip \
    && pacman --noconfirm -Scc \
    && yay --noconfirm -Sc \
    && rm -r /tmp/*

