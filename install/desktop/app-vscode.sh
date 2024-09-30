sudo pacman -S --noconfirm code

mkdir -p ~/.config/Code/User
cp ~/.local/share/omakarch/configs/vscode.json ~/.config/Code\ -\ OSS/User/settings.json
cp ~/.local/share/omakarch/configs/vscode-keybindings.json ~/.config/Code\ -\ OSS/User/keybindings.json

# Install default supported themes
code --install-extension enkia.tokyo-night

# Install extra extensions
code --install-extension 4ops.terraform
code --install-extension oderwat.indent-rainbow
code --install-extension aswinkumar863.smarty-template-support
code --install-extension streetsidesoftware.code-spell-checker
