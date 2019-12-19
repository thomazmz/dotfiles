#!/bin/sh

install_omzsh(){
    printf "${BOOTSTRAPPER}BOOTSTRAPPER${OFF} - ${BOLD}Installing Oh My Zsh ${OFF} \n"
    curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh; zsh
    printf "\n"
}
