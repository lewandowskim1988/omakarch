# Updating the Chromium settings require that we first quit the application, since settings aren't picked up live,
# and they're overwritten on exit.
if gum confirm "Update Chromium theme? If yes, Chromium (and all Chromium-based apps) will closed!"; then
	pkill -f chromium

	while pgrep -f chromium >/dev/null; do
		sleep 0.1
	done

	cd ~/.config/chromium/Default
	jq '.extensions.theme += {"id": "user_color_theme_id", "system_theme": 0}' Preferences >tmp.json && mv tmp.json Preferences
	jq ".browser.theme.color_scheme = $CHROME_COLOR_SCHEME | .browser.theme.color_variant = $CHROME_COLOR_VARIANT | .browser.theme.user_color = $CHROME_COLOR" Preferences >tmp.json && mv tmp.json Preferences
	jq ".ntp += {\"custom_background_dict\":{\"background_url\": \"https://github.com/lewandowskim1988/omakarch/blob/main/themes/$CHROME_BACKGROUND?raw=true\"}}" Preferences >tmp.json && mv tmp.json Preferences
	cd ~
fi
