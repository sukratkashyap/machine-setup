---
title: IDE
---

## Visual Studio Code

=== "ubuntu"
    ```bash
    sudo snap install code --classic
    echo -e "\nfs.inotify.max_user_watches=524288\n" | sudo tee -a /etc/sysctl.conf
    sudo sysctl -p
    ```

## DBeaver CE

=== "ubuntu"
    ```bash
    sudo snap install dbeaver-ce
    ```

## Insomnia

=== "ubuntu"
    ```bash
    sudo snap install insomnia
    ```

## Github Desktop

<https://github.com/shiftkey/desktop>

=== "ubuntu"
    ```bash
    export VERSION="2.9.0-linux2"
    wget https://github.com/shiftkey/desktop/releases/download/release-$VERSION/GitHubDesktop-linux-$VERSION.deb -O /tmp/githubdesktop.deb
    sudo apt-get install -y /tmp/githubdesktop.deb
    ```
