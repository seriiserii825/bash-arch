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
  echo "${tblue}1. Install yay${treset}"
  echo "${tgreen}2. Speed up yay${treset}"
  echo "${tyellow}3. Config pacman.conf${treset}"
  echo "${tgreen}4. Chrome Git ssh${treset}"
  echo "${tgreen}4.1 Download xubuntu${treset}"
  echo "${tblue}5. Install i3${treset}"
  echo "${tyellow}6. Nvidia${treset}"
  echo "${tyellow}6.1 Zsh Oh-my-zsh${treset}"
  echo "${tyellow}6.2 Neovim${treset}"
  echo "${tblue}7. Locale${treset}"
  echo "${tgreen}8. Bash repos${treset}"
  echo "${tyellow}9. Gpg Pass${treset}"
  echo "${tgreen}10. Py repos${treset}"
  echo "${tgreen}11. Audio${treset}"
  echo "${tgreen}12. BrowserPass${treset}"
  echo "${tmagenta}--------------Leave empty to exit${treset}"

  read -p "${tmagenta}Enter your choice: ${treset}" choice

  echo "${tblue}You chose: $choice${treset}"

  case $choice in
    1)
      proceed
      source $MODULES_DIR/install-yay.sh
      menu
      ;;
    2)
      proceed
      source $MODULES_DIR/speed-up-yay.sh
      menu
      ;;
    3)
      proceed
      source $MODULES_DIR/configure-pacman.sh
      menu
      ;;
    4)
      proceed
      source $MODULES_DIR/git-ssh.sh
      menu
      ;;
    4.1)
      proceed
      source $MODULES_DIR/xubuntu.sh
      menu
      ;;
    5)
      ## need to finish
      proceed
      source $MODULES_DIR/install-i3.sh
      menu
      ;;
    6)
      proceed
      source $MODULES_DIR/nvidia.sh
      menu
      ;;
    6.1)
      proceed
      source $MODULES_DIR/zsh.sh
      menu
      ;;
    6.2)
      proceed
      source $MODULES_DIR/nvim.sh
      menu
      ;;
    7)
      proceed
      source $MODULES_DIR/locale.sh
      menu
      ;;
    8)
      proceed
      source $MODULES_DIR/bash-repos.sh
      menu
      ;;
    9)
      proceed
      source $MODULES_DIR/gpg.sh
      menu
      ;;
    10)
      proceed
      source $MODULES_DIR/py-repos.sh
      menu
      ;;
    11)
      proceed
      source $MODULES_DIR/audio.sh
      menu
      ;;
    12)
      proceed
      source $MODULES_DIR/browserpass.sh
      menu
      ;;
    *)
      echo "${tmagenta}Invalid choice${treset}"
      ;;
  esac
}

menu
