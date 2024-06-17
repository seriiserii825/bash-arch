#! /bin/bash 

ssh-keygen -t rsa -b 4096 -C "seriiburduja@mail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
sudo pacman -S xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
echo "SSH key copied to clipboard"
