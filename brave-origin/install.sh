#!/bin/bash
sudo cp initial_preferences /opt/brave.com/brave-origin-nightly
rsync -r Brave-Origin-Nightly/ ~/.local/share/ice/profiles/"$1"

cat << EOF > ~/.local/share/applications/"WebApp-$1.desktop"
[Desktop Entry]
Name=$1
Comment=웹 앱
Exec=$2brave-origin --class='WebApp-$3' --user-data-dir='$_' --app='https://$3' --start-maximized
Type=Application
Icon=$(ls ~/.local/share/ice/icons/"$1".*)
Categories=WebApps
StartupWMClass=WebApp-$3
StartupNotify=true
X-WebApp-Browser=Brave Origin
EOF
