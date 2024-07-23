sudo pacman -S --noconfirm redshift

# Add Redshift config
mkdir -p ~/.config/redshift
mkdir -p ~/.config/autostart
cp ~/.local/share/omakarch/configs/redshift.conf ~/.config/redshift/
cp ~/.local/share/omakarch/configs/Redshift.desktop ~/.config/autostart/Redshift.desktop
gtk-launch Redshift.desktop >/dev/null 2>&1
