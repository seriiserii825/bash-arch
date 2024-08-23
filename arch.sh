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
  echo "${tblue}2. Speed up yay${treset}"
  echo "${tblue}3. Config pacman.conf${treset}"
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
    *)
      echo "${tmagenta}Invalid choice${treset}"
      ;;
    3)
      read -p "${tgreen}Do you want to proceed? yes/no: ${treset}" agree
      if [ $agree != "yes" ]; then
        echo "${tmagenta}Exiting...${treset}"
        exit 0
      else
        source $MODULES_DIR/configure-pacman.sh
      fi
      menu
      ;;
  esac
}

menu
