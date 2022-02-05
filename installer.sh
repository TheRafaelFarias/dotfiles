#!/bin/bash 

function install {
    which $1 &> /dev/null

    if [ $? -ne 0 ]; then
        echo "Installing: ${1}..."
        sudo apt install -y $1
    else
        echo "Already installed: ${1}"
    fi
}

echo "Installing softwares"
install git 
install zsh 
install easystroke 
install wmctrl 
install xdotool 
install curl 
install openjdk-8-jdk

for f in scripts/*.sh; do bash "$f" -H; done

echo "Moving files to it's locations"
cp ./.zshrc ${HOME} 
cp ./.gitconfig ${HOME}
