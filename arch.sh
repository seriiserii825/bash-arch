#! /bin/bash

SCRIPT_DIR=$(dirname "$0")
MODULES_DIR="$SCRIPT_DIR/modules"

function proceed(){
  read -p "${tgreen}Do you want to proceed? yes/no: ${treset}" agree
  if [ $agree != "yes" ]; then
    echo "${tmagenta}Exiting...${treset}"
    exit 0
  fi
}

function menu(){
  echo "${tyellow}1. Config pacman.conf${treset}"
  echo "${tblue}2. Install yay${treset}"
  echo "${tgreen}3. Speed up yay${treset}"
  echo "${tblue}3.1 Install i3${treset}"
  echo "${tyellow}3.2. Nvidia${treset}"
  echo "${tyellow}3.3 Chrome ${treset}"
  echo "${tgreen}4.Git ssh${treset}"
  echo "${tgreen}4.1 Download xubuntu${treset}"
  echo "${tyellow}5 Zsh Oh-my-zsh${treset}"
  echo "${tyellow}6.2 Neovim${treset}"
  echo "${tblue}7. Locale${treset}"
  echo "${tgreen}8. Bash repos${treset}"
  echo "${tyellow}9. Gpg Pass${treset}"
  echo "${tgreen}10. Py repos${treset}"
  echo "${tblue}11. Audio${treset}"
  echo "${tgreen}12. BrowserPass${treset}"
  echo "${tblue}13. Apps${treset}"
  echo "${tblue}14. Chrome extenstions${treset}"
  echo "${tmagenta}--------------Leave empty to exit${treset}"

  source menu.sh
}

menu
