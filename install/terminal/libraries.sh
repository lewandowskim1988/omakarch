sudo pacman -S --noconfirm \
	libvirt \
	qemu \
	ebtables \
	dnsmasq \
	libvncserver

# Configuration for minikube over KVM
sudo usermod -a -G libvirt $(whoami)
sudo systemctl start libvirtd.service
sudo systemctl enable libvirtd.service