#!/bin/sh

generate_ssh_key() {
    printf "\n${YELLOW}Warning${OFF}"
    printf "\n${BOLD}In this step the script will generates SSH public and private keys${OFF}\n"
    read -p "Are you shure you want to continue? [y/N]" -n 1 -rs
    printf "\n\n"
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        printf "${BOOTSTRAPPER}BOOTSTRAPPER${OFF} - Generating a new ${BOLD}ssh key${OFF} through SSH-Keygen \n"
        ssh-keygen -b 4096 -t rsa -C thomaz.zandonotto@gmail.com
        cat /Users/thomaz/.ssh/id_rsa.pub
        printf "\n"
    fi
}