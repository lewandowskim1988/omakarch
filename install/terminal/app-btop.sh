sudo pacman -S btop --noconfirm

# Use Omakarch btop config
mkdir -p ~/.config/btop/themes
cp ~/.local/share/omakarch/configs/btop.conf ~/.config/btop/btop.conf
cp ~/.local/share/omakarch/themes/tokyo-night/btop.theme ~/.config/btop/themes/tokyo-night.theme
