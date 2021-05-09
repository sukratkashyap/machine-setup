#!/bin/bash

set -e

# password less sudo
echo -e "\n$USER ALL=(ALL) NOPASSWD: ALL\n" | sudo tee -a /etc/sudoers

# installing common software
sudo apt-get update
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    wget curl \
    gnupg-agent \
    software-properties-common \
    vim
sudo apt-get install -y gcc g++ make \
    git \
    python3 python3-dev python3-pip \
    snapd \
    default-jdk \
    ansible
sudo apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev python-openssl

# installing google
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install -y ./google-chrome-stable_current_amd64.deb

# installing terminus
wget https://github.com/Eugeny/terminus/releases/download/v1.0.137/terminus-1.0.137-linux.deb -O terminus.deb
sudo apt-get install -y ./terminus.deb
mkdir -p ~/.config/terminus/
cp -v ./common/terminus.yaml ~/.config/terminus/config.yaml

# for vscode
echo "fs.inotify.max_user_watches=524288" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p

# installing docker
curl -fsSL https://get.docker.com -o get-docker.sh
bash get-docker.sh
sudo usermod -aG docker $USER
