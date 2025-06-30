cat <<EOF >~/.local/share/applications/Omakarch.desktop
[Desktop Entry]
Version=1.0
Name=Omakarch
Comment=Omakarch Controls
Exec=alacritty --config-file /home/$USER/.config/alacritty/pane.toml --class=Omakarch --title=Omakarch -e omakarch
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/omakarch/applications/icons/Omakarch.png
Categories=GTK;
StartupNotify=false
EOF
;