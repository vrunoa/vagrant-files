#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install curl
sudo apt-get install git
sudo apt.get install make
sudo apt-get install vim
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash
nvm install 0.11
nvm use 0.11
npm set registry http://registry.npmjs.org/
