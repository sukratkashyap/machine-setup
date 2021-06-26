---
title: Tools
---

## Kubernetes

=== "ubuntu"
    ```bash
    sudo snap install kubectl --classic
    sudo snap install helm --classic
    export VERSION="v0.11.1"
    sudo wget https://github.com/kubernetes-sigs/kind/releases/download/$VERSION/kind-linux-amd64 -O /usr/local/bin/kind
    sudo chmod +x /usr/local/bin/kind
    ```

## Cloud

=== "ubuntu"
    ```bash
    sudo snap install doctl
    ```

## Virtual Box

<https://download.virtualbox.org/virtualbox/6.1.22/>

=== "ubuntu"
    ```bash
    wget https://download.virtualbox.org/virtualbox/6.1.22/virtualbox-6.1_6.1.22-144080~Ubuntu~eoan_amd64.deb -O /tmp/virtualbox.deb
    sudo apt-get install -y /tmp/virtualbox.deb
    ```

## Vagrant

=== "ubuntu"
    ```bash
    curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
    sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
    sudo apt-get update && sudo apt-get install vagrant
    ```


## Teamviewer

=== "ubuntu"
    ```bash
    wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb -O /tmp/teamviewer.deb
    sudo apt-get install -y /tmp/teamviewer.deb
    ```

## Zoom

=== "ubuntu"
    ```bash
    wget https://zoom.us/client/latest/zoom_amd64.deb -O /tmp/zoom.deb
    sudo apt-get install -y /tmp/zoom.deb
    ```
