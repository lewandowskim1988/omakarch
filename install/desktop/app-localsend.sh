yay --answerclean None --answerdiff None --removemake --cleanafter --noconfirm -S localsend-bin

# Open localsend port so other devices from network can connect
sudo firewall-cmd --permanent --zone=public --add-port=53317/tcp
sudo firewall-cmd --permanent --zone=public --add-port=53317/udp