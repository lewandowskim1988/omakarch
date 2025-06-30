yay --answerclean None --answerdiff None --removemake --cleanafter --noconfirm -S ulauncher

# Start ulauncher to have it populate config before we overwrite
mkdir -p ~/.config/autostart/
cp ~/.local/share/omakarch/configs/ulauncher.desktop ~/.config/autostart/ulauncher.desktop
gtk-launch ulauncher.desktop >/dev/null 2>&1
sleep 2 # ensure enough time for ulauncher to set defaults
cp ~/.local/share/omakarch/configs/ulauncher.json ~/.config/ulauncher/settings.json
