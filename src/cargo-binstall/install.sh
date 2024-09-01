#!/bin/sh
set -e

echo "Activating feature 'cargo-binstall'"

cargo install cargo-binstall

PACKAGES=${PACKAGES:-""}
CARGO_PACKAGES="${PACKAGES//,/ }"

cargo binstall -y --force --locked $CARGO_PACKAGES
