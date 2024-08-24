#! /bin/bash 

sudo pacmans -S browserpass
yay -S browserpass-chrome

cd /usr/lib/browserpass
make hosts-chromium-user
# make host-chrome-user
