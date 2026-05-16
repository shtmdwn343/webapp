#!/bin/bash
rsync -r --mkpath profile/ ~/.local/share/ice/profiles/"$1"
PROFILE="$_"

if [[ $4 != -private ]]; then
    cat << 'EOF' >> "$PROFILE/user.js"
user_pref("browser.privatebrowsing.autostart", false);
user_pref("places.history.enabled", false);
user_pref("privacy.sanitize.timeSpan", 0);
user_pref("privacy.clearHistory.formdata", true);
user_pref("privacy.clearHistory.siteSettings", true);
user_pref("privacy.sanitize.cpd.hasMigratedToNewPrefs3", true);
EOF
fi

if [[ $5 == -dark ]]; then
  cp extension-preferences.json "$PROFILE"
  cd ~/.mullvad-browser/.mullvad/mullvadbrowser/*.default-release
  install -D extensions/addon@darkreader.org.xpi "$PROFILE/extensions/addon@darkreader.org.xpi"
fi

cat << EOF > ~/.local/share/applications/"WebApp-$1.desktop"
[Desktop Entry]
Name=$1
Comment=웹 앱
Exec=$2mullvad-browser --class 'WebApp-$3' --profile '$PROFILE' 'https://$3'
Type=Application
Icon=$(ls ~/.local/share/ice/icons/"$1".*)
Categories=WebApps
StartupWMClass=WebApp-$3
StartupNotify=true
X-WebApp-Browser=Mullvad Browser
EOF
