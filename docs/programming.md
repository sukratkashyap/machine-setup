---
title: Programming
---

## Git config

```bash
git config --global alias.ch checkout
git config --global alias.br branch
git config --global alias.cm commit
git config --global alias.st status
git config --global alias.lgs "log --pretty --oneline"
git config --global credential.helper store
git config --global push.default current
git config --global core.editor "nano"
git config --global pull.ff only

git config --global user.name ""
git config --global user.email ""
```

## ASDF

=== "linux"
    ```bash
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1

    echo -e "\n. \$HOME/.asdf/asdf.sh\n" >> ~/.bashrc
    echo -e "\n. \$HOME/.asdf/completions/asdf.bash\n" >> ~/.bashrc

    source ~/.bashrc
    asdf update
    ```

### Python

=== "ubuntu"
    ```bash
    sudo apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
        libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev \
        xz-utils tk-dev libffi-dev liblzma-dev python-openssl
    VERSION=3.8.8
    asdf plugin add python
    asdf install python "$VERSION"
    asdf global python "$VERSION"
    asdf reshim python
    ```

### Nodejs

=== "linux"
    ```bash
    VERSION=14.16.1
    asdf plugin add nodejs
    asdf install nodejs "$VERSION"
    asdf global nodejs "$VERSION"
    ```

## Golang

=== "linux"
    ```bash
    wget https://golang.org/dl/go1.16.5.linux-amd64.tar.gz -O /tmp/golang.tar.gz
    sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf /tmp/golang.tar.gz

    echo -e "\nexport PATH=\$PATH:/usr/local/go/bin\n" >> ~/.bashrc
    ```

## Conda

=== "ubuntu"
    ```bash
    curl https://repo.anaconda.com/pkgs/misc/gpgkeys/anaconda.asc | gpg --dearmor > conda.gpg
    sudo install -o root -g root -m 644 conda.gpg /usr/share/keyrings/conda-archive-keyring.gpg
    sudo gpg --keyring /usr/share/keyrings/conda-archive-keyring.gpg --no-default-keyring --fingerprint 34161F5BF5EB1D4BFBBB8F0A8AEB4F8B29D82806
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/conda-archive-keyring.gpg] https://repo.anaconda.com/pkgs/misc/debrepo/conda stable main" | sudo tee /etc/apt/sources.list.d/conda.list
    sudo apt-get update
    sudo apt-get install conda -y
    source /opt/conda/etc/profile.d/conda.sh
    conda init
    conda config --set auto_activate_base false
    ```
