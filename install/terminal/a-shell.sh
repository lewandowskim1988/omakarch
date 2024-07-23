# Configure the bash shell using Omakarch defaults
[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/share/omakarch/configs/bashrc ~/.bashrc

# Load the PATH for use later in the installers
source ~/.local/share/omakarch/defaults/bash/shell

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
# Configure the inputrc using Omakarch defaults
cp ~/.local/share/omakarch/configs/inputrc ~/.inputrc
