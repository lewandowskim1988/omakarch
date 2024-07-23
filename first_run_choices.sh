OPTIONAL_APPS=("1password" "Spotify" "Zoom" "Dropbox")
DEFAULT_OPTIONAL_APPS='1password,Spotify,Zoom'
export OMAKARCH_FIRST_RUN_OPTIONAL_APPS=$(gum choose "${OPTIONAL_APPS[@]}" --no-limit --selected $DEFAULT_OPTIONAL_APPS --height 7 --header "Select optional apps" | tr ' ' '-')

AVAILABLE_LANGUAGES=("Go" "Python" "Rust")
SELECTED_LANGUAGES="Go"
export OMAKARCH_FIRST_RUN_LANGUAGES=$(gum choose "${AVAILABLE_LANGUAGES[@]}" --no-limit --selected "$SELECTED_LANGUAGES" --height 10 --header "Select programming languages")
