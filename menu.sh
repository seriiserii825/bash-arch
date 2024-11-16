read -p "${tmagenta}Enter your choice: ${treset}" choice

echo "${tblue}You chose: $choice${treset}"

case $choice in
  1)
    proceed
    source $MODULES_DIR/configure-pacman.sh
    menu
    ;;
  2)
    proceed
    source $MODULES_DIR/install-yay.sh
    menu
    ;;
  3)
    proceed
    source $MODULES_DIR/speed-up-yay.sh
    menu
    ;;
  3.1)
    proceed
    source $MODULES_DIR/install-i3.sh
    menu
    ;;
  3.2)
    proceed
    source $MODULES_DIR/nvidia.sh
    menu
    ;;
  3.3)
    proceed
    source $MODULES_DIR/google-chrome.sh
    menu
    ;;
  3.4)
    proceed
    source $MODULES_DIR/warp-terminal.sh
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
    proceed
    source $MODULES_DIR/zsh.sh
    menu
    ;;
  6.2)
    proceed
    source $MODULES_DIR/nvm.sh
    menu
    ;;
  6.3)
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
  11.1)
    proceed
    source $MODULES_DIR/bluetooth.sh
    menu
    ;;
  12)
    proceed
    source $MODULES_DIR/browserpass.sh
    menu
    ;;
  13)
    source $MODULES_DIR/apps.sh
    menu
    ;;
  14)
    proceed
    source $MODULES_DIR/chrome-extensions.sh
    menu
    ;;
  15)
    proceed
    source $MODULES_DIR/local-by-flywheel.sh
    menu
    ;;
  16)
    proceed
    source $MODULES_DIR/libre-office.sh
    menu
    ;;
  17)
    proceed
    source $MODULES_DIR/smtp.sh
    menu
    ;;
  18)
    proceed
    source $MODULES_DIR/android.sh
    menu
    ;;
  19)
    proceed
    source $MODULES_DIR/youtube.sh
    menu
    ;;
  20)
    proceed
    source $MODULES_DIR/hyprland.sh
    menu
    ;;
  *)
    echo "${tmagenta}Invalid choice${treset}"
    ;;
esac
