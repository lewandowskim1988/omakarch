yay --answerclean None --answerdiff None --removemake --cleanafter --noconfirm -S cursor-bin

DESKTOP_FILE="/usr/share/applications/cursor.desktop"

sudo bash -c "cat > $DESKTOP_FILE" <<EOL
[Desktop Entry]
Name=Cursor
Comment=AI-powered code editor
Exec=/opt/cursor.appimage --no-sandbox
Icon=/home/$USER/.local/share/omakarch/applications/icons/cursor.png
Type=Application
Categories=Development;IDE;
EOL

if [ -f "$DESKTOP_FILE" ]; then
	echo "cursor.desktop created successfully"
else
	echo "Failed to create cursor.desktop"
fi