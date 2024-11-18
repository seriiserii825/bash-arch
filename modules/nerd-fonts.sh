#! /bin/bash 

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip
mkdir ~/.local/share/fonts

cd ~/Downloads

unzip FiraCode.zip

cp *.ttf ~/.local/share/fonts

fc-cache -f -v

rm FiraCode.zip

echo "Nerd Fonts installed"

sleep 2

echo "Now will reboot"

sudo reboot now
