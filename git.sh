#!/bin/sh

set_gitignore_profile(){
    printf "${BOOTSTRAPPER}BOOTSTRAPPER${OFF} - ${BOLD}Setting .gitignore global file ${OFF} \n"
    curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh; zsh
}

set_gitconfig_profile(){
    printf "${BOOTSTRAPPER}BOOTSTRAPPER${OFF} - ${BOLD}Setting .gitconfig global file ${OFF} \n"
}
