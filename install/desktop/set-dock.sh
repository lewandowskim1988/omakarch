# Favorite apps for dock
apps=(
	"firefox.desktop"
	"chromium.desktop"
	"Alacritty.desktop"
	"Neovim.desktop"
	"code-oss.desktop"
	"org.keepassxc.KeePassXC.desktop"
	"WhatsApp.desktop"
	"signal-desktop.desktop"
	"deadbeef.desktop"
	"pinta.desktop"
	"md.obsidian.Obsidian.desktop"
	"Activity.desktop"
	"Omakarch.desktop"
	"org.gnome.Settings.desktop"
	"org.gnome.Nautilus.desktop"
	"localsend.desktop"
)

# Array to hold installed favorite apps
installed_apps=()

# Directory where .desktop files are typically stored
desktop_dirs=(
	"/usr/share/applications"
	"/usr/local/share/applications"
	"$HOME/.local/share/applications"
)

# Check if a .desktop file exists for each app
for app in "${apps[@]}"; do
	for dir in "${desktop_dirs[@]}"; do
		if [ -f "$dir/$app" ]; then
			installed_apps+=("$app")
			break
		fi
	done
done

# Convert the array to a format suitable for gsettings
favorites_list=$(printf "'%s'," "${installed_apps[@]}")
favorites_list="[${favorites_list%,}]"

# Set the favorite apps
gsettings set org.gnome.shell favorite-apps "$favorites_list"
