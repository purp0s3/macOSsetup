#!/bin/sh -e

# Update repos
brew update

# Upgrade repos
brew upgrade

# Check health
brew doctor

# Disable analytics
brew analytics off

# Cleanup
brew cleanup