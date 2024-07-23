sudo pacman -S neovim --noconfirm

# Only attempt to set configuration if Neovim has never been run
if [ ! -d "$HOME/.config/nvim" ]; then
	# Use LazyVim
	git clone https://github.com/LazyVim/starter ~/.config/nvim

	# Disable update notification popup in starter config
	sed -i 's/checker = { enabled = true }/checker = { enabled = true, notify = false }/g' ~/.config/nvim/lua/config/lazy.lua

	# Make everything match the terminal transparency
	mkdir -p ~/.config/nvim/plugin/after
	cp ~/.local/share/omakarch/configs/neovim/transparency.lua ~/.config/nvim/plugin/after/

	# Default to Tokyo Night theme
	cp ~/.local/share/omakarch/themes/tokyo-night/neovim.lua ~/.config/nvim/lua/plugins/theme.lua

	# Enable default extras
	cp ~/.local/share/omakarch/configs/neovim/lazyvim.json ~/.config/nvim/lazyvim.json
fi

# Replace desktop launcher with one running inside Alacritty
if [[ -d ~/.local/share/applications ]]; then
	sudo rm -rf /usr/share/applications/nvim.desktop
	source ~/.local/share/omakarch/applications/Neovim.sh
fi
