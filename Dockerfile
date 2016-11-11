FROM vcatechnology/fedora
MAINTAINER VCA Technology <developers@vcatechnology.com>

# Install useful packages
RUN vca-install-package \
  python \
  git \
  sudo

# Grab the VCA CI Scripts
RUN vca-install-package wget xz tar && \
  wget -q https://tool-chain.vcatechnology.com/release/vca-tool-chain-ci-scripts-latest.tar.xz && \
  tar -Jxf vca-tool-chain-ci-scripts-latest.tar.xz -C / && \
  rm vca-tool-chain-ci-scripts-latest.tar.xz && \
  vca-uninstall-package wget xz tar

# Create a build-server user with sudo permissions & no password
RUN useradd -ms /bin/bash build-server && \
    echo "build-server ALL=(root) NOPASSWD:ALL" | tee -a /etc/sudoers.d/build-server && \
    echo "#includedir /etc/sudoers.d" >> /etc/sudoers && \
    chmod 0440 /etc/sudoers.d/build-server

# Set the build-server user as default
USER build-server
WORKDIR /home/build-server
