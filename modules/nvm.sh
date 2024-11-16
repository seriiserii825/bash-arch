mkdir /home/serii/.config/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

echo "${tmagenta}Restart terminal and run nvm install 18.19.0 and npm install yarn global${treset}"
echo "Enable copilot"

read -p "Press enter to continue"

i3-msg exit
