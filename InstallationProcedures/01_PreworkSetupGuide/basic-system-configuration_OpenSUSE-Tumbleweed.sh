#!/bin/bash


# Description: Basic system installation script for OpenSUSE Tumbleweed


## Install Snapcraft (instructions from https://snapcraft.io/install/atom/opensuse#install)

### Add repository
sudo zypper addrepo --refresh https://download.opensuse.org/repositories/system:/snappy/openSUSE_Tumbleweed snappy
sudo zypper --gpg-auto-import-keys refresh
sudo zypper dup --from snappy

### Add /bin/snappy to path
sudo echo 'export PATH=$PATH:/bin/snappy' >>/etc/profile
source /etc/profile

### Install Snappy
sudo zypper install snapd

### Enable service
sudo systemctl enable snapd
sudo systemctl start snapd
sudo systemctl enable snapd.apparmor
sudo systemctl start snapd.apparmor


## Install Atom (instructions from https://snapcraft.io/install/atom/opensuse#install)

sudo snap install atom --classic




