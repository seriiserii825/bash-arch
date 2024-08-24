cd 
git clone git@bitbucket.org:seriiserii825/xubuntu.git
sudo pacman -S vi vifm python 
mkdir Downloads Documents Picture
sudo pacman -S xorg xorg-xinit rofi i3 polybar mousepad polkit dunst lxsession sddm mesa-libglxterm xorg-apps libnotify alacritty
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
if [ ! -d $dir_path ]; then
    mkdir $dir_path
fi
cd $dir_path
ln -s ~/xubuntu/dunstrc dunstrc
