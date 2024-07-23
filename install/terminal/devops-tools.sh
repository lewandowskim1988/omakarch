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

yay --answerclean All --answerdiff All --nocleanmenu --nodiffmenu --removemake --cleanafter --noconfirm -S \
  google-cloud-cli-gke-gcloud-auth-plugin \
  vcluster \
  kubecolor \
  google-cloud-cli \
  kubectl-view-secret-bin