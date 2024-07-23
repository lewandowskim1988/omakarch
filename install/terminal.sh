# Needed for all installers
sudo pacman -Syu --noconfirm
sudo pacman -S curl git unzip --noconfirm

# Run terminal installers
for installer in ~/.local/share/omakarch/install/terminal/*.sh; do source $installer; done
