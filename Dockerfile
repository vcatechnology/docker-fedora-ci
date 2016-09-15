FROM vcatechnology/fedora:24
MAINTAINER VCA Technology <developers@vcatechnology.com>

# Install useful packages
RUN dnf install -y \
  python \
  git \
  sudo
