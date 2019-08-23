# !/bin/sh

app_install() {

    # Install App Store applications
    printf "${YELLOW}Warning${OFF}"
    printf "\n${BOLD}To proceed, make shure you're logged into App Store.${OFF}\n"
    read -p "Do you want to be redirected to App Store and sign in? [Y/n]" -n 1 -rs
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        open -a "App Store"
        printf "\n"
        read -p "Ok, I'm watting, just hit any key to continue as soon as you are done..." -n 1 -rs

    fi
    printf "\n\n"
    for application in "${app_store_applications[@]}"
    do
        printf "${BOOTSTRAPPER}BOOTSTRAPPER${OFF} - Installing ${BOLD}${application}${OFF} through mas \n"
        mas info $application
        mas install $application
        printf "\n"
    done

}
