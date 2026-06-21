#!/usr/bin/env bash
# Build the Piantor Pro vial keymap and drop the .uf2 into ./builds/
# Usage: ./build-piantor.sh
set -euo pipefail

KB="beekeeb/piantor_pro"
KM="hentzthename"
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Ensure the keg-only ARM toolchain is on PATH (no-op if already there)
export PATH="/opt/homebrew/opt/arm-none-eabi-gcc@8/bin:/opt/homebrew/opt/arm-none-eabi-binutils/bin:$PATH"

qmk compile -kb "$KB" -km "$KM"

mkdir -p "$REPO_ROOT/builds"
mv "$REPO_ROOT/beekeeb_piantor_pro_${KM}.uf2" "$REPO_ROOT/builds/"

echo "Firmware: builds/beekeeb_piantor_pro_${KM}.uf2"
