#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# install mpv
dnf5 -y install mpv

# install wezterm
dnf5 -y copr enable wezfurlong/wezterm-nightly
dnf5 -y install wezterm
dnf5 -y copr disable wezfurlong/wezterm-nightly
