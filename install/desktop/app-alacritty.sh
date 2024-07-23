# Alacritty is a GPU-powered and highly extensible terminal. See https://alacritty.org/
sudo pacman -S --noconfirm alacritty
mkdir -p ~/.config/alacritty
cp ~/.local/share/omakarch/configs/alacritty.toml ~/.config/alacritty/alacritty.toml
cp ~/.local/share/omakarch/themes/tokyo-night/alacritty.toml ~/.config/alacritty/theme.toml
cp ~/.local/share/omakarch/configs/alacritty/fonts/CaskaydiaMono.toml ~/.config/alacritty/font.toml
cp ~/.local/share/omakarch/configs/alacritty/font-size.toml ~/.config/alacritty/font-size.toml
