cd 
sudo pacman -S vi vifm python 
sudo touch /etc/pip.conf
sudo echo "[global]\nbreak-system-packages = true" >> /etc/pip.conf

mkdir Downloads Documents Picture
sudo pacman -S xorg xorg-xinit rofi i3 polybar mousepad polkit dunst lxsession xorg-apps libnotify alacritty dmenu copyq openssh xclip xsel jq bat wget curl gnome-keyring polkit-gnome unzip zip nitrogen feh linux-firmware libmagick jpegoptim
sudo pacman -S ttf-dejavu awesome-terminal-fonts woff2 dosfstools
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
sudo reboot now
