#!/bin/bash

echo "Installing wakatime"
mkdir ~/.oh-my-zsh/custom/plugins 
git clone https://github.com/wbingli/zsh-wakatime.git ~/.oh-my-zsh/custom/plugins

echo "Please input your Wakatime API Key:"
read KEY

SETTINGS_TEMPLATE="echo
[settings]
\napi_key = $KEY"

echo "Creating Wakatime config with key: $KEY"

$SETTINGS_TEMPLATE > $HOME/.wakatime.cfg