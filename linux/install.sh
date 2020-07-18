#!/bin/bash

set -e

# password less sudo
echo -e "\n$USER ALL=(ALL) NOPASSWD: ALL\n" | sudo tee -a /etc/sudoers

# installing common software
sudo apt-get update
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    vim
sudo apt-get install -y gcc g++ make

# installing guake and putting as startup
sudo apt-get install -y guake
sudo cp -v /usr/share/applications/guake.desktop /etc/xdg/autostart/

# installing git
sudo apt-get install -y git
git config --global alias.ch checkout
git config --global alias.br branch
git config --global alias.cm commit
git config --global alias.st status
git config --global alias.lgs "log --pretty --oneline"
git config --global credential.helper store

# installing google
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install -y ./google-chrome-stable_current_amd64.deb

# installing dev tools
sudo apt-get install -y snapd
sudo snap install code --classic
sudo snap install insomnia
sudo snap install kubectl --classic
sudo snap install android-studio --classic
sudo snap install dbeaver-ce
sudo snap install rider --classic

# configure vscode
mkdir -p ~/.config/Code/User/
cp -v ./common/vscode.settings.json ~/.config/Code/User/settings.json
cp -v ./common/vscode.keymaps.json ~/.config/Code/User/keybindings.json
echo "fs.inotify.max_user_watches=524288" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p

# condiguring bash aliases
cp -v ./common/.bash_aliases ~/.bash_aliases

# install dotnet
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install -y dotnet-sdk-3.1
sudo ln -s /usr/bin/dotnet /usr/local/bin/dotnet
dotnet tool install --global dotnet-ef

# install nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# install java
sudo apt-get install -y default-jdk

# installing python
sudo apt-get install -y python3 python3-dev python3-pip

# installing docker
curl -fsSL https://get.docker.com -o get-docker.sh
bash get-docker.sh
sudo usermod -aG docker $USER

# installing code extensions
code --install-extension ms-python.python
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension ms-azuretools.vscode-docker
code --install-extension vscjava.vscode-java-pack
code --install-extension golang.go
code --install-extension ms-vscode.PowerShell
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension ms-vscode.vs-keybindings
code --install-extension ms-dotnettools.csharp
code --install-extension docsmsft.docs-markdown
code --install-extension docsmsft.docs-preview
code --install-extension octref.vetur
code --install-extension vscode-icons-team.vscode-icons
code --install-extension dart-code.flutter
code --install-extension visualstudioexptteam.vscodeintellicode
code --install-extension redhat.vscode-yaml

# teamviewer install
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt-get install -y ./teamviewer_amd64.deb

# install chrome driver for selenium
wget https://chromedriver.storage.googleapis.com/`curl -s https://chromedriver.storage.googleapis.com/LATEST_RELEASE`/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo mv ./chromedriver /usr/local/bin
chmod +x /usr/local/bin/chromedriver

# Jekyll
sudo apt-get install -y ruby-full build-essential zlib1g-dev
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
sudo gem install jekyll bundler

# github desktop
wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'
sudo apt-get update && sudo apt-get install -y github-desktop
