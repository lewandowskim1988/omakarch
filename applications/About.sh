cat <<EOF >~/.local/share/applications/About.desktop
[Desktop Entry]
Version=1.0
Name=About
Comment=System information from Fastfetch
Exec=alacritty --config-file /home/$USER/.local/share/omakarch/defaults/alacritty/pane.toml -e bash -c 'fastfetch; read -n 1 -s'
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/omakarch/applications/icons/Endeavouros.png
Categories=GTK;
StartupNotify=false
EOF
