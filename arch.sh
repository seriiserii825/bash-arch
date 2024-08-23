#! /bin/bash

SCRIPT_DIR=$(dirname "$0")
MODULES_DIR="$SCRIPT_DIR/modules"

function menu(){
  echo "${tblue}1. Config pacman.conf${treset}"
  echo "${tblue}2. Speed up yay${treset}"

  read -p "${tmagenta}Enter your choice: ${treset}" choice

  case $choice in
    1)
      read -p "${tgreen}Do you want to proceed? yes/no: ${treset}" agree
      if [ $agree != "yes" ]; then
        echo "${tmagenta}Exiting...${treset}"
        exit 0
      else
        source $MODULES_DIR/configure-pacman.sh
      fi
      menu
      ;;
    2)
      read -p "${tgreen}Do you want to proceed? yes/no: ${treset}" agree
      if [ $agree != "yes" ]; then
        echo "${tmagenta}Exiting...${treset}"
        exit 0
      else
        source $MODULES_DIR/speed-up-yay.sh
      fi
      menu
      ;;
    *)
      echo "${tmagenta}Invalid choice${treset}"
      ;;
  esac
}

menu
