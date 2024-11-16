#! /bin/bash 

sudo pacman -S bluez bluez-utils usbutils blueman

sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service
sudo systemctl status bluetooth.service

echo "Setting bluetooth with bluemanager"
