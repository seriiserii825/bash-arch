# install yay
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
sudo pacman -S sddm
sudo systemctl enable sddm.service
