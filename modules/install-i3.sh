cd 
sudo pacman -S vi vifm python 
mkdir Downloads Documents Picture
sudo pacman -S xorg xorg-xinit rofi i3 polybar mousepad polkit dunst lxsession sddm xorg-apps libnotify alacritty dmenu copyq openssh xclip xsel jq bat
sudo systemctl enable sddm.service
cd
cp /etc/X11/xinitrc > ~/.xinitrc
cat <<TEST >> ".xinitrc"
exec i3 &
dunst &
lxsession
TEST

chmod +x .xinitrc

cp /etc/X11/xinit/xserverrc ~/.xserverrc

echo "exec /usr/bin/Xorg -nolisten tcp "$@" vt$XDG_VTNR >.xserverrc"

sudo systemctl start  polkit.service
sudo systemctl enable polkit.service
sudo systemctl status polkit.service

dir_path=~/.config/dunst
rm -rf dir_path
if [ ! -d $dir_path ]; then
    mkdir $dir_path
fi
cd $dir_path
ln -s ~/xubuntu/dunstrc dunstrc

rm -rf ~/.config/i3
ln -s ~/xubuntu/i3 ~/.config/i3
ln -s ~/xubuntu/i3/polybar ~/.config/polybar
ln -s ~/xubuntu/alacritty ~/.config/alacritty
rm -rf ~/.config/vifm
ln -s ~/xubuntu/vifm ~/.config/vifm
