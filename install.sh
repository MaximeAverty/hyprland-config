#!/bin/bash
set -e

cd "$(dirname "$0")"

echo "==> Installing packages..."
sudo pacman -S --needed - <packages.txt

echo "==> Copying configs..."
for dir in config/*/; do
  name=$(basename "$dir")
  echo "  -> $name"
  cp -r "$dir" ~/.config/
done

echo "==> Done! Reboot or reload"
