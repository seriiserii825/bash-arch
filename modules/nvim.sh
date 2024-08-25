# sudo pacman -S neovim
# mkdir ~/Documents/Apps
# git clone git@github.com:seriiserii825/nvim-coc.git ~/Documents/Apps/nvim
# ln -s ~/Documents/Apps/nvim ~/.config/nvim
#
# pip install pynvim

# mkdir /home/serii/.config/nvm
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
#
# uncomment #exec /home/serii/Documents/bash/bash-scripts/init-nvm.sh in ~/.config/i3/config
sed -i 's/#exec \/home\/serii\/Documents\/bash\/bash-scripts\/init-nvm.sh/exec \/home\/serii\/Documents\/bash\/bash-scripts\/init-nvm.sh/g' ~/.config/i3/config
i3-msg exit
#
# echo "${tmagenta}Restart terminal and run nvm install 18.19.0 and install yarn global${treset}"
# echo "Enable copilot"
#
# read -p "Press enter to continue"
#
