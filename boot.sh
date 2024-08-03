set -e

ascii_art='
________                  __                         .__     
\_____  \   _____ _____  |  | _______ _______   ____ |  |__  
 /   |   \ /     \\__  \ |  |/ /\__  \\_  __ \_/ ___\|  |  \ 
/    |    \  Y Y  \/ __ \|    <  / __ \|  | \/\  \___|   Y  \
\_______  /__|_|  (____  /__|_ \(____  /__|    \___  >___|  /
        \/      \/     \/     \/     \/            \/     \/ 

'

echo -e "$ascii_art"
echo "=> Omakarch is for fresh Arch base installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo pacman -Syu >/dev/null
sudo pacman -S --noconfirm git wget ibus python-tqdm >/dev/null

echo "Cloning stable Omakarch..."
rm -rf ~/.local/share/omakarch
git clone https://github.com/lewandowskim1988/omakarch.git ~/.local/share/omakarch >/dev/null

echo "Installation starting..."
source ~/.local/share/omakarch/install.sh
