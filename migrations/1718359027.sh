# Catch 1.0.0 up to 1.1.0

sudo echo "Running upgrade migration..."

# Change Zellij directory to be realized rather than a symlink
ZELLIJ_THEMES_DIR="$HOME/.config/zellij/themes"
if [ -L $ZELLIJ_THEMES_DIR ]; then
	rm $ZELLIJ_THEMES_DIR
	mkdir -p $ZELLIJ_THEMES_DIR
	for dir in $OMAKARCH_PATH/themes/*; do
		if [ -d "$dir" ]; then
			zellij_file="$dir/zellij.kdl"
			dir_name=$(basename "$dir")
			dest_file="$ZELLIJ_THEMES_DIR/$dir_name.kdl"
			cp "$zellij_file" "$dest_file"
		fi
	done
fi

# New neovim settings
mkdir -p ~/.config/nvim/plugin/after
cp $OMAKARCH_PATH/configs/neovim/transparency.lua ~/.config/nvim/plugin/after/
sed -i 's/checker = { enabled = true }/checker = { enabled = true, notify = false }/g' ~/.config/nvim/lua/config/lazy.lua
source ~/.local/share/omakarch/applications/Neovim.sh

# New font size setup
cp $OMAKARCH_PATH/configs/alacritty/font-size.toml ~/.config/alacritty/
cp ~/.config/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml.bak
cp $OMAKARCH_PATH/configs/alacritty.toml ~/.config/alacritty/alacritty.toml
source $OMAKARCH_PATH/install/desktop/set-framework-text-scaling.sh

cp $OMAKARCH_PATH/themes/tokyo-night/alacritty.toml ~/.config/alacritty/theme.toml
cp $OMAKARCH_PATH/configs/alacritty/fonts/CaskaydiaMono.toml ~/.config/alacritty/font.toml

# Set new Gnome settings
source $OMAKARCH_PATH/install/desktop/set-gnome-settings.sh

# Install new apps
source $OMAKARCH_PATH/install/desktop/app-gnome-sushi.sh
source $OMAKARCH_PATH/install/desktop/app-localsend.sh
source $OMAKARCH_PATH/install/terminal/app-fastfetch.sh
source $OMAKARCH_PATH/install/terminal/apps-terminal.sh

# Add new desktop applications icons
source $OMAKARCH_PATH/applications/Omakarch.sh
source $OMAKARCH_PATH/applications/About.sh
source $OMAKARCH_PATH/applications/Activity.sh
source $OMAKARCH_PATH/applications/Podman.sh

# Update icons of apps still installed
[ -f ~/.local/share/applications/WhatsApp.desktop ] && source $OMAKARCH_PATH/applications/WhatsApp.sh

# Set new app grid
source $OMAKARCH_PATH/install/desktop/set-app-grid.sh

# Add new Gnome extensions
source $OMAKARCH_PATH/install/desktop/set-gnome-extensions.sh

gum style \
	--foreground 212 --border-foreground 212 --border double \
	--align left --width 80 --margin "1 2" --padding "2 4" \
	"1. alacritty.toml config moved to .bak to include new font-size.toml" \
	"2. Alacritty theme/font has been reset. Use omakarch app to set again." \
	"3. To use Pano, the new clipboard manager, enable in Gnome Extensions."

gum confirm "Set your application dock to default with new apps?" && source $OMAKARCH_PATH/install/desktop/set-dock.sh
gum confirm "Ready to logout for all settings to take effect?" && gnome-session-quit --logout --no-prompt
