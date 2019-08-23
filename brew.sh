# !/bin/sh

export HOMEBREW_NO_AUTO_UPDATE=1

install_brew() {
    printf "${BOOTSTRAPPER}BOOTSTRAPPER${OFF} - Installing ${BOLD}homebrew${OFF} \n"
    if test ! $(which brew); then
        printf "Installing homebrew...\n"
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else 
        printf "Nice, Brew is already installed!\n\n"
    fi
}

update_brew() {
    printf "${BOOTSTRAPPER}BOOTSTRAPPER${OFF} - Updating ${BOLD}homebrew${OFF}\n"
    brew update
    printf "\n"
}

install_brew_casks() {
    for cask in "${brew_casks[@]}"; do  
        printf "${BOOTSTRAPPER}BOOTSTRAPPER${OFF} - Installing ${BOLD}${cask}${OFF} through brew cask \n"
        brew cask install $cask
        printf "\n"
    done
}

install_brew_fonts() {
    brew tap homebrew/cask-fonts
    for font in "${brew_fonts[@]}";do
        printf "${BOOTSTRAPPER}BOOTSTRAPPER${OFF} - Installing ${BOLD}${font}${OFF} through brew \n"
        brew cask install font-$font
        printf "\n"
    done
}

install_brew_formulas() {
    for package in "${brew_packages[@]}";do
        printf "${BOOTSTRAPPER}BOOTSTRAPPER${OFF} - Installing ${BOLD}${package}${OFF} through brew \n"
        brew install $package
        printf "\n"
    done
}