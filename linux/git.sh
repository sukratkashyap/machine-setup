#!/bin/bash

set -e

git config --global alias.ch checkout
git config --global alias.br branch
git config --global alias.cm commit
git config --global alias.st status
git config --global alias.lgs "log --pretty --oneline"
git config --global credential.helper store
git config --global push.default current
git config --global core.editor "nano"
git config --global pull.ff only
