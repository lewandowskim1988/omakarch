sudo pacman -S --noconfirm code

mkdir -p ~/.config/Code/User
cp ~/.local/share/omakarch/configs/vscode.json ~/.config/Code/User/settings.json

# Install default supported themes
code --install-extension enkia.tokyo-night
