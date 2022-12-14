#!/bin/bash


# Set local .bashrc
grep 'local .bashrc' "${HOME}/.bashrc" || \
    echo 'test -f ~/.dotfiles/.bashrc && source $_ # local .bashrc' >> ~/.bashrc
# source local .bashrc
source .bashrc

# code directory
test -d "${HOME}/src" || mkdir "${HOME}/src"
test -d "${HOME}/src/go" || mkdir "${HOME}/src/go"

# upgrade
sudo apt update && sudo apt upgrade -y

# essentials
sudo apt-get -y install \
    curl \
    jq \
    python3 \
    python3-pip \
    python-is-python3 \
    openjdk-8-jdk \
    build-essential \
    tlp tlp-rdw \
    gnome-tweaks \
    vim

# Install tools
bash tools/git/install.sh
bash tools/asdf/install.sh
bash tools/awscli/install.sh
bash tools/code/install.sh
bash tools/docker/install.sh
bash tools/gcloud/install.sh
bash tools/glow/install.sh
bash tools/go/install.sh
bash tools/kubectl/install.sh
bash tools/ohmyzsh/install.sh
bash tools/terminator/install.sh
bash tools/terraform/install.sh

sudo snap install spotify && sudo snap refresh spotify
