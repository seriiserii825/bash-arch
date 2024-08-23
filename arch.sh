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
  echo "${tblue}4. Install i3${treset}"
  echo "${tgreen}5. Chrome Git ssh${treset}"
  echo "${tyellow}6. Nvidia${treset}"
  echo "${tblue}7. Locale${treset}"
  echo "${tgreen}8. Polkit${treset}"
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
      ## need to finish
      proceed
      source $MODULES_DIR/install-i3.sh
      menu
      ;;
    5)
      proceed
      source $MODULES_DIR/git-ssh.sh
      menu
      ;;
    6)
      proceed
      source $MODULES_DIR/nvidia.sh
      menu
      ;;
    7)
      proceed
      source $MODULES_DIR/locale.sh
      menu
      ;;
    8)
      # need to finish
      proceed
      source $MODULES_DIR/polkit.sh
      menu
      ;;
    *)
      echo "${tmagenta}Invalid choice${treset}"
      ;;
  esac
}

menu
