#!/bin/bash -e

echo Installing Homebrew...
./brew/install.sh
echo done.

echo Installing applications...
# Install GUI apps
./cask/apps/install.sh
echo done.

echo Installing terminal tools...
# Install terminal tools
./cask/terminal/install.sh
echo done.

echo Installing developer tools...
# Install dev tools
./cask/dev/install.sh
echo done.

echo Everything set, ready, go!
exit