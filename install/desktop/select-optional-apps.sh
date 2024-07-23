if [[ -v OMAKARCH_FIRST_RUN_OPTIONAL_APPS ]]; then
	apps=$OMAKARCH_FIRST_RUN_OPTIONAL_APPS

	if [[ -n "$apps" ]]; then
		for app in $apps; do
			source "$OMAKARCH_PATH/install/desktop/optional/app-${app,,}.sh"
		done
	fi
fi
