#!/bin/bash -e

# Install Xcode Command Line Tools
xcode-select --install || true

# node-gyp rebuild issue. Enable command lint tools and ignore the warnings.
sudo xcode-select --switch /Library/Developer/CommandLineTools

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install command line tools
./brew/install.sh
# Install apps
./brew-cask/install.sh