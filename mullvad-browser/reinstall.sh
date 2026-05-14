#!/bin/bash
rm -r ~/.mullvad-browser
timeout 3s mullvad-browser

cp extension-preferences.json user.js ~/.mullvad-browser/.mullvad/mullvadbrowser/*.default-release
PROFILE="$_"

wget https://addons.mozilla.org/firefox/downloads/latest/darkreader/latest.xpi -O "$PROFILE/extensions/addon@darkreader.org.xpi"

mullvad-browser &
sleep 1
wmctrl -F -r 'Mullvad 브라우저' -b add,maximized_vert,maximized_horz
sleep 1
wmctrl -F -c 'Mullvad 브라우저'
sleep 1
sed -i 's/,\\"fx[^]]*//' "$PROFILE/prefs.js"
