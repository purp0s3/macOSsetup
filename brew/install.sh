#!/bin/sh -e

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Update repos
brew update

# Upgrade repos
brew upgrade

# Install Cask
brew install cask

# Check health
brew doctor

# Disable analytics
brew analytics off

# Cleanup
brew cleanup