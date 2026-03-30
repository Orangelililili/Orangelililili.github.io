#!/usr/bin/env bash
set -euo pipefail

# Ubuntu/Debian setup for local Jekyll preview (no Docker required).
# Installs Ruby, Bundler, and build deps commonly needed by native gems.

sudo apt-get update
sudo apt-get install -y \
  ruby-full \
  ruby-bundler \
  build-essential \
  zlib1g-dev \
  nodejs \
  npm

echo
echo "Installed:"
ruby -v
bundle -v
node -v
npm -v
