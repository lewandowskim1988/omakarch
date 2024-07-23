# Install default programming languages
if [[ -v OMAKARCH_FIRST_RUN_LANGUAGES ]]; then
	languages=$OMAKARCH_FIRST_RUN_LANGUAGES
else
	AVAILABLE_LANGUAGES=("Go" "Python" "Rust")
	languages=$(gum choose "${AVAILABLE_LANGUAGES[@]}" --no-limit --height 10 --header "Select programming languages")
fi

if [[ -n "$languages" ]]; then
	for language in $languages; do
		case $language in
		Go)
			mise use --global go@latest
			;;
		Python)
			mise use --global python@latest
			;;
		Rust)
			sudo pacman -S --noconfirm rustup
			;;
		esac
	done
fi
