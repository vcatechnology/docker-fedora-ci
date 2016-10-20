FROM vcatechnology/fedora:24
MAINTAINER VCA Technology <developers@vcatechnology.com>

# Install useful packages
RUN dnf install -y \
  python \
  git \
  sudo

# create a build-serer user with sudo permissions & no password
RUN useradd -ms /bin/bash build-serer && \
    echo "build-serer ALL=(root) NOPASSWD:ALL" | tee -a /etc/sudoers.d/build-serer && \
    echo "#includedir /etc/sudoers.d" >> /etc/sudoers && \
    chmod 0440 /etc/sudoers.d/build-serer

# set the build-serer user as default
USER build-serer
WORKDIR /home/build-serer
