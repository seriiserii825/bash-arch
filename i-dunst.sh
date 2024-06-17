#! /bin/bash 

sudo pacman -S libnotify dunst 

dir_path=~/.config/dunst
if [ ! -d $dir_path ]; then
    mkdir $dir_path
fi
cd $dir_path
ln -s ~/xubuntu/dunstrc dunstrc

sudo pacman -S polkit lxsession
# yay -S lxpolkit-git
