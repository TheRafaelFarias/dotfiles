#!/bin/bash

echo "⌨️  Installing VSCode"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code-insiders

function install {
    name="${1}"
    code-insiders --install-extension ${name} --force
}

install albymor.increment-selection
install BeardedBear.beardedtheme
install Blackboxapp.blackbox
install bradlc.vscode-tailwindcss
install byCedric.vscode-expo
install Dart-Code.dart-code
install Dart-Code.flutter
install dbaeumer.vscode-eslint
install ElAnandKumar.el-vsc-product-icon-theme
install esbenp.prettier-vscode
install fisheva.eva-theme
install GitHub.github-vscode-theme
install leandro-rodrigues.fluent-ui-vscode
install meganrogge.template-string-converter
install miguelsolorio.fluent-icons
install patbenatar.advanced-new-file
install PKief.material-icon-theme
install redhat.vscode-xml
install ritwickdey.LiveServer
install rocketseat.rocketseatreactjs
install rocketseat.rocketseatreactnative
install sleistner.vscode-fileutils
install styled-components.vscode-styled-components
install tal7aouy.theme
install usernamehw.errorlens
install WakaTime.vscode-wakatime
install wix.vscode-import-cost

cp ./VSCodeSettings.json  ~/.config/Code\ -\ Insiders/User/settings.json