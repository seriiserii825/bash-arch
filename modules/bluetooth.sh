#! /bin/bash 

sudo pacman -S bluez bluez-utils pulseaudio-bluetooth usbutils blueman

sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service
sudo systemctl status bluetooth.service

sudo rfkill block bluetooth
sudo rfkill unblock bluetooth
sleep 1
bluetoothctl power on
