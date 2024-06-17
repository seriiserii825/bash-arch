#! /bin/bash 

sudo pacman -S libnotify dunst 
dir_path=~/.config/dunst
if [ ! -d $dir_path ]; then
    mkdir $dir_path
fi
cd $dir_path
ln -s ~/xubuntu/dunstrc dunstrc

yay -S lxpolkit-git
