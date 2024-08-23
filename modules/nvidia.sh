
echo "Use Nvidia or Nouveau driver? (1/2)"

read -r driver

if [ "$driver" = "1" ]; then
    sudo pacman -S nvidia nvidia-utils nvidia-settings
elif [ "$driver" = "2" ]; then
  sudo pacman -Rdds nvidia nvidia-utils
  sudo pacman -S --asdeps libgl
  sudo pacman -S libgl xf86-video-nouveau

  echo "${tmagenta}Edit /etc/mkinitcpio.conf${treset}"
  echo "${tmagenta}Add MODULES=(nouveau)${treset}"
  echo "Finish scrpt after editing"
  # sudo echo "MODULES=(nouveau)" >> /etc/mkinitcpio.conf
  # sudo nvim /etc/mkinitcpio.conf
  # add MODULES=(nouveau)
  # sudo mkinitcpio -p linux
else
    echo "Invalid input"
    exit 1
fi

echo "${tmagenta}Restart your computer to apply changes${treset}"
