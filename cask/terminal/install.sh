#!/bin/sh -e
###################

# ZSH Installation & Config
brew install zsh
chsh -s /usr/local/bin/zsh

# GitHub CLI
brew install gh

# Cleanup
brew cleanup