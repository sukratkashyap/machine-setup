Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco feature enable -n=allowGlobalConfirmation

# Browsers
choco install googlechrome
choco install firefox

# Utils
choco install adobereader
choco install notepadplusplus

# developer specific
choco install git
choco install conemu
choco install vscode
choco install dotnetcore-sdk
choco install nodejs-lts
# jdk not working
choco install jdk11
choco install python
choco install dbeaver
choco install github-desktop
choco install visualstudio2019community

# git config
git config --global alias.ch checkout
git config --global alias.br branch
git config --global alias.cm commit
git config --global alias.st status
git config --global alias.lgs "log --pretty --oneline"
git config --global credential.helper store

Copy-Item -Path ./windows/ConEmu.xml -Destination $env:USERPROFILE/AppData/Roaming/ConEmu.xml

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

# enabling hyper v and installing docker
choco install docker-desktop
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
