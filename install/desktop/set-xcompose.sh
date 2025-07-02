envsubst < ~/.local/share/omakarch/configs/xcompose > ~/.XCompose

gsettings set org.gnome.desktop.input-sources xkb-options "['compose:caps']"
