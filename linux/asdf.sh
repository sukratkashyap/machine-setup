#!/bin/bash

set -e

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0

echo -e "\n. \$HOME/.asdf/asdf.sh\n" >> ~/.bashrc
echo -e "\n. \$HOME/.asdf/completions/asdf.bash\n" >> ~/.bashrc

source ~/.bashrc
asdf update

VERSION=14.16.1
asdf plugin add nodejs
asdf install nodejs "$VERSION"
asdf global nodejs "$VERSION"

VERSION=3.8.8
asdf plugin add python
asdf install python "$VERSION"
asdf global python "$VERSION"
asdf reshim python
