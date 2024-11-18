#! /bin/bash 

sudo pacman -S browserpass
yay -S browserpass-chrome

cd /usr/lib/browserpass
sudo make hosts-chrome-user
