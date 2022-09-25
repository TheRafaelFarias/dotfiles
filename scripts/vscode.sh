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
install beardedbear.beardedtheme                  
install bradlc.vscode-tailwindcss                 
install bycedric.vscode-expo                      
install dart-code.dart-code               
install dart-code.flutter                 
install dbaeumer.vscode-eslint                    
install elanandkumar.el-vsc-product-icon-theme    
install esbenp.prettier-vscode                    
install github.copilot                         
install github.github-vscode-theme                
install jpoissonnier.vscode-styled-components     
install leandro-rodrigues.fluent-ui-vscode        
install meganrogge.template-string-converter      
install miguelsolorio.fluent-icons               
install patbenatar.advanced-new-file              
install pkief.material-icon-theme                
install redhat.vscode-xml                        
install rocketseat.rocketseatreactjs              
install rocketseat.rocketseatreactnative          
install sleistner.vscode-fileutils                
install styled-components.vscode-styled-components
install usernamehw.errorlens                      
install wakatime.vscode-wakatime                 
install wix.vscode-import-cost

cp ./VSCodeSettings.json  ~/.config/Code\ -\ Insiders/User/settings.json