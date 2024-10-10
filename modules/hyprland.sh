function installAll(){
  sudo pacman -Syu
  sudo pacman -S hyprland wofi waybar swaylock
  yay -S wlogout
}

function symlinkAll(){
  cd ~/.config

  rm -rf hypr
  rm -rf swaylock
  rm -rf waybar
  rm -rf wlogout

  ln -s ~/xubuntu/hyprland/hypr
  ln -s ~/xubuntu/hyprland/swaylock
  ln -s ~/xubuntu/hyprland/waybar
  ln -s ~/xubuntu/hyprland/wlogout
}

installAll

# mkdir -p ~/.config/wlogout
# sudo cp /etc/wlogout/layout ~/.config/wlogout/
# sudo cp /etc/wlogout/style.css ~/.config/wlogout/
