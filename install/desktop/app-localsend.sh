yay --answerclean None --answerdiff None --removemake --cleanafter --noconfirm -S localsend-bin

# Open localsend port so other devices from network can connect
firewall-cmd --permanent --zone=public --add-port=53317/tcp
firewall-cmd --permanent --zone=public --add-port=53317/udp