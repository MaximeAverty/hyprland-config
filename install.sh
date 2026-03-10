#!/bin/bash
set -e

cd "$(dirname "$0")"

echo "==> Installing packages..."
sudo pacman -S --needed - <packages.txt

echo "==> Installing AUR packages..."
yay -S --needed - <packages-aur.txt

echo "==> Copying configs..."
for dir in config/*/; do
  name=$(basename "$dir")
  echo "  -> $name"
  cp -r "$dir" ~/.config/
done

echo "==> Setting permissions..."
chmod +x ~/.config/rofi/launchers/**/*.sh
chmod +x ~/.config/waybar/scripts/*.sh

echo "==> Done! Reboot or reload"
