#!/bin/sh -e

function brew_install_or_upgrade {
    if brew ls --versions "$1" >/dev/null; then
        HOMEBREW_NO_AUTO_UPDATE=1 brew upgrade "$1"
    else
        HOMEBREW_NO_AUTO_UPDATE=1 brew install "$1"
    fi
}

# Update repos
brew update

# Upgrade repos
brew upgrade

# Check health
brew doctor

# Disable analytics
brew analytics off

# Install ZSH
brew install zsh

# Cleanup
brew cleanup