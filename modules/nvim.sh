mkdir ~/Documents/Apps
git clone git@github.com:seriiserii825/nvim-coc.git ~/Documents/Apps/nvim
ln -s ~/Documents/Apps/nvim ~/.config/nvim
pip install pynvim

mkdir /home/serii/.config/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

echo "${tmagenta}Restart terminal and run nvm install 18.19.0${treset}"