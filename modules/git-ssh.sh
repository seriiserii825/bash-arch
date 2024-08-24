echo "${tgreen}Installing google chrome from aur${treset}"

#yay -S google-chrome

echo "${tblue}Installing ssh git${treset}"

ssh-keygen -t rsa -b 4096 -C "seriiburduja@mail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

xclip -sel clip < ~/.ssh/id_rsa.pub

git config --global user.email "seriiburduja@gmail.com"
git config --global user.name "Serii"

echo "${tgreen}Public key copied to clipboard, add it to github and bitbucket${treset}"
