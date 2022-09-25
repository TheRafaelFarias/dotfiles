#!/bin/bash

echo "Installing spotify"
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
sudo sh -c 'echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list'
sudo apt-get update 
sudo apt-get install spotify-client

# echo "Installing spicetify"
# curl -fsSL https://raw.githubusercontent.com/khanhas/spicetify-cli/master/install.sh | sh
# export SPICETIFY_INSTALL="/home/rafaelfarias/.spicetify"
# export PATH="$SPICETIFY_INSTALL:$PATH"

# cd spicetify-themes
# cp -r * ~/.config/spicetify/Themes

# echo "Install spicetify Dribbblish theme"
# cd "$(dirname "$(spicetify -c)")/Themes/Fluent"
# mkdir -p ../../Extensions
# cp fluent.js ../../Extensions/.
# spicetify config extensions fluent.js
# spicetify config current_theme Fluent color_scheme dark
# spicetify config inject_css 1 replace_colors 1 overwrite_assets 1
# spicetify apply