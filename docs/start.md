---
title: Start
---

## Passwordless sudo

=== "linux"
    ```bash
    echo -e "\n$USER ALL=(ALL) NOPASSWD: ALL\n" | sudo tee -a /etc/sudoers
    ```

## Prerequisite

=== "ubuntu"
    ```bash
    sudo apt-get install -y \
        apt-transport-https \
        ca-certificates \
        wget curl \
        gnupg-agent \
        software-properties-common \
        vim \
        gcc g++ make \
        git \
        python3 python3-dev python3-pip \
        snapd \
        default-jdk
    ```

## Terminus

<https://github.com/Eugeny/terminus>

=== "ubuntu"
    ```bash
    export VERSION="1.0.142"
    wget https://github.com/Eugeny/terminus/releases/download/v$VERSION/terminus-$VERSION-linux.deb -O /tmp/terminus.deb
    sudo apt-get install -y /tmp/terminus.deb
    mkdir -p ~/.config/terminus/
    wget "https://raw.githubusercontent.com/sukratkashyap/machine-setup/master/configs/terminus.yaml" -O ~/.config/terminus/config.yaml
    ```

## Google Chrome

=== "ubuntu"
    ```bash
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/google-chrome.deb
    sudo apt-get install -y /tmp/google-chrome.deb
    ```

## Docker

=== "linux"
    ```bash
    curl -fsSL https://get.docker.com -o get-docker.sh
    bash get-docker.sh
    sudo usermod -aG docker $USER
    ```
