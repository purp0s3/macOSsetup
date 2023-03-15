#!/bin/sh -e
###################

# Install tools
bash -c "$(curl -fsSL https://raw.githubusercontent.com/theos/theos/master/bin/install-theos)"

git clone --recursive https://github.com/opa334/theos-jailed ~/theos-jailed
cd ~/theos-jailed
./install

brew install ios-deploy

git clone https://github.com/Al4ise/Azule ~/Azule
cd ~/Azule
sudo ln -sf ~/Azule/azule /usr/local/bin/azule

brew tap majd/repo
brew install ipatool

brew install pip3
pip3 install dragon

# Cleanup
brew cleanup