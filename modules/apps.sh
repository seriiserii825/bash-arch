rm -rf ~/.local/share/keyrings/default
function proceed(){
  index=$1
  read -p "${tgreen}Do you want to install ${index}? yes/no: ${treset}" agree
  if [ $agree != "yes" ]; then
    echo "${tmagenta}Exiting...${treset}"
    exit 0
  fi
}
function installApp(){
  pacman_apps=(
    "telegram-desktop"
    "flameshot"
    "php"
    "mysql"
    "tesseract"
    "tesseract-data-eng"
    "translate-shell"
  )
  yay_apps=(
    "skypeforlinux-bin"
    "st"
  )
  apps=("${pacman_apps[@]}" "${yay_apps[@]}")
  # loop through the array and pring indx+name
  for i in "${!apps[@]}"; do
    echo "${tblue}$i ${apps[$i]}${treset}"
  done
  read -p "${tgreen}Enter the index of the app you want to install: ${treset}" index
  app=${apps[$index]}
  proceed $app
  if [[ " ${pacman_apps[@]} " =~ " ${app} " ]]; then
    sudo pacman -S $app
  elif [[ " ${yay_apps[@]} " =~ " ${app} " ]]; then
    yay -S $app
  else
    echo "${tmagenta}App not found${treset}"
  fi
}

installApp
