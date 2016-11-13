# Fedora Docker CI Image

[![](https://images.microbadger.com/badges/image/vcatechnology/fedora-ci.svg)](http://microbadger.com/images/vcatechnology/fedora-ci "Image Layers") [![](https://images.microbadger.com/badges/version/vcatechnology/fedora-ci.svg)](http://microbadger.com/images/vcatechnology/fedora-ci "Image Version") [![](https://images.microbadger.com/badges/license/vcatechnology/fedora-ci.svg)](https://microbadger.com/images/vcatechnology/fedora-ci "Image License")  [![](https://images.microbadger.com/badges/commit/vcatechnology/fedora-ci.svg)](https://github.com/vcatechnology/docker-fedora-ci "Image Commit")

This container derives from
[vcatechnology/fedora](https://hub.docker.com/r/vcatechnology/fedora) so that the
image has the latest [Fedora](https://getfedora.org/) packages. It then
installs the some useful development packages.

Available on Docker Hub as [vcatechnology/fedora-ci](https://hub.docker.com/r/vcatechnology/fedora-ci/)

## `sudo`

The Docker image creates a user account 'build-server' with `sudo` permissions. The `sudo` password
is disabled to allow non-interactive sudo calls.
