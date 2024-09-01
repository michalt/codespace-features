#!/bin/sh
set -e
set -x

echo "Activating feature 'cargo-binstall'"

curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash

cargo binstall -y --force --locked $PACKAGES
