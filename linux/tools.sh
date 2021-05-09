#!/bin/bash

set -e

# github
wget https://github.com/shiftkey/desktop/releases/download/release-2.8.1-linux2/GitHubDesktop-linux-2.8.1-linux2.deb
sudo apt-get install -y ./GitHubDesktop-linux-2.8.1-linux2.deb

# conda install
curl https://repo.anaconda.com/pkgs/misc/gpgkeys/anaconda.asc | gpg --dearmor > conda.gpg
sudo install -o root -g root -m 644 conda.gpg /usr/share/keyrings/conda-archive-keyring.gpg
sudo gpg --keyring /usr/share/keyrings/conda-archive-keyring.gpg --no-default-keyring --fingerprint 34161F5BF5EB1D4BFBBB8F0A8AEB4F8B29D82806
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/conda-archive-keyring.gpg] https://repo.anaconda.com/pkgs/misc/debrepo/conda stable main" | sudo tee /etc/apt/sources.list.d/conda.list
sudo apt-get update
sudo apt-get install conda -y
source /opt/conda/etc/profile.d/conda.sh
conda init
conda config --set auto_activate_base false

# vagrant
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install vagrant

# teamviewer install
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt-get install -y ./teamviewer_amd64.deb

# zoom
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt-get install -y ./zoom_amd64.deb
