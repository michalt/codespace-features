#!/bin/sh
set -e

echo "Activating feature 'cargo-binstall'"

PACKAGES=${PACKAGES:-""}
CARGO_PACKAGES=("${PACKAGES//,/ }")

cargo install cargo-binstall
cargo binstall -y --force --locked $CARGO_PACKAGES
