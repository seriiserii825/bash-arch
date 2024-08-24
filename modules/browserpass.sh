#! /bin/bash 

sudo pacman -S browserpass
yay -S browserpass-chrome

cd /usr/lib/browserpass
make hosts-chromium-user
# make host-chrome-user
