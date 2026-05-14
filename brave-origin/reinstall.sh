#!/bin/bash
sudo cp 'initial_preferences (Delete data on exit)' /opt/brave.com/brave-origin-nightly/initial_preferences
rsync -r --delete Brave-Origin-Nightly ~/.config/BraveSoftware

timeout 3s brave-origin
sleep 1
sed -i 's/,"kActionTabSearch"//' ~/.config/BraveSoftware/Brave-Origin-Nightly/Default/Preferences
