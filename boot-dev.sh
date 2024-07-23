set -e

ascii_art='________                  __        ___.
\_____  \   _____ _____  |  | ____ _\_ |__
 /   |   \ /     \\__   \ |  |/ /  |  \ __ \
/    |    \  Y Y  \/ __ \|    <|  |  / \_\ \
\_______  /__|_|  (____  /__|_ \____/|___  /
        \/      \/     \/     \/         \/
'

echo -e "$ascii_art"
echo "=> Omakarch is for fresh Arch base installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo pacman -Syu >/dev/null
sudo pacman -S --noconfirm git >/dev/null

echo "Cloning development Omakarch..."
rm -rf ~/.local/share/omakarch
git clone -b development https://github.com/lewandowskim1988/omakarch.git ~/.local/share/omakarch >/dev/null

echo "Installation starting..."
source ~/.local/share/omakarch/install.sh
