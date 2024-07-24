OPTIONAL_APPS=("1password" "Brave" "Obs-studio" "Skype" "Slack" "Spotify" "Steam" "Teams" "Virtualbox" "Zed" "Zoom")
DEFAULT_OPTIONAL_APPS=''
export OMAKARCH_FIRST_RUN_OPTIONAL_APPS=$(gum choose "${OPTIONAL_APPS[@]}" --no-limit --selected $DEFAULT_OPTIONAL_APPS --height 7 --header "Select optional apps" | tr ' ' '-')

AVAILABLE_LANGUAGES=("Go" "Python" "Rust")
SELECTED_LANGUAGES="Go"
export OMAKARCH_FIRST_RUN_LANGUAGES=$(gum choose "${AVAILABLE_LANGUAGES[@]}" --no-limit --selected "$SELECTED_LANGUAGES" --height 10 --header "Select programming languages")
