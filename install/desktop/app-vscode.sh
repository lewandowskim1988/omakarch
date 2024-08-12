sudo pacman -S --noconfirm code

mkdir -p ~/.config/Code/User
cp ~/.local/share/omakarch/configs/vscode.json ~/.config/Code\ -\ OSS/User/settings.json
cp ~/.local/share/omakarch/configs/vscode-keybindings.json ~/.config/Code\ -\ OSS/User/keybindings.json

# Install default supported themes
code --install-extension enkia.tokyo-night
