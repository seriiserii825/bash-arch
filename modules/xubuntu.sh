cd ~
git clone git@bitbucket.org:seriiserii825/xubuntu.git
cd ~/Documents
git clone git@github.com:seriiserii825/Knowledge-base_.git 

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
rm -rf ~/.config/alacritty
ln -s ~/xubuntu/alacritty ~/.config/alacritty
rm -rf ~/.config/vifm
ln -s ~/xubuntu/vifm ~/.config/vifm
