#!/bin/sh

source install.config
source utils/app.sh
source utils/brew.sh
source utils/defaults.sh
source utils/git.sh
source utils/terminal.sh

BOLD="\033[1m"
BOOTSTRAPPER='\033[1;3;32m'
WARNING='\033[0;33m'
OFF="\033[m"

printf "\n${YELLOW}Warning${OFF}"
printf "\n${BOLD}Make shure you are not running this shell script blindly and that you had completely read and understood this script.${OFF}\n"
read -p "Are you shure you want to continue? [y/N]" -n 1 -rs
printf "\n"
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    exit 1
fi

sudo -p "Password" -v
printf "\n"

install_brew
update_brew
install_brew_casks
install_brew_fonts
install_brew_formulas
app_install
set_macos_defaults
install_omzsh
install_powerlevel10k
set_zshrc_profile
set_gitignore_profile
set_gitconfig_profile

# TODO :
# Install Powerlevel10k (https://github.com/romkatv/powerlevel10k#i-cannot-make-powerlevel10k-work-with-my-plugin-manager-help)
# Load shortcut preset for iterm2
# Load color preset for iterm2 (https://github.com/MartinSeeler/iterm2-material-design)
# Load config preset for iterm2
# Load .zshrc
# Instal zsh extensions 
# .gitconfig
# .gitignore
# generate ssh key