sudo pacman -S --noconfirm \
  github-cli \
  lazygit \
  pgcli \
  minikube \
  terragrunt \
  podman \
  podman-compose \
  kubectl \
  helm \
  kubectx

yay --answerclean None --answerdiff None --removemake --cleanafter --noconfirm -S \
  google-cloud-cli-gke-gcloud-auth-plugin \
  kubecolor \
  google-cloud-cli \
  kubectl-view-secret-bin \
  apache-tools

sudo usermod -a -G libvirt $(whoami)
sudo systemctl start libvirtd.service
sudo systemctl enable libvirtd.service
