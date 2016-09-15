FROM fedora:23
MAINTAINER VCA Technology <developers@vcatechnology.com>

# Install useful packages
RUN dnf install -y \
  python \
  git 
