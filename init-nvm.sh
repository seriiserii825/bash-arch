#! /bin/bash

nvm install 18.19.0
npm install yarn -g


sed -i 's/exec \/home\/serii\/Documents\/bash\/bash-scripts\/init-nvm.sh/#exec \/home\/serii\/Documents\/bash\/bash-scripts\/init-nvm.sh/g' ~/.config/i3/config

