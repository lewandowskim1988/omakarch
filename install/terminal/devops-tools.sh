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
  kubectx \
  trippy \
  crane \
  aws-cli-v2

yay --answerclean None --answerdiff None --removemake --cleanafter --noconfirm -S \
  google-cloud-cli-gke-gcloud-auth-plugin \
  kubecolor \
  google-cloud-cli \
  kubectl-view-secret-bin \
  apache-tools \
  kor

# Make symlink for podman/docker since some applications like make are not able to read alias
sudo ln -sf /usr/bin/podman /usr/local/bin/docker

# Install helm plugin
helm plugin install https://github.com/nikhilsbhat/helm-images
