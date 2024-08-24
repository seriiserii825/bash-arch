zip_file_path=/home/serii/Downloads/desene_animate.zip

if [ ! -f $zip_file_path ]; then
    echo "${tmagenta}$zip_file_path does not exist${treset}"
    exit 1
fi


sudo pacman -S pass unzip zip
cd ~/Downloads


pass init serii

unzip $zip_file_path -d /home/serii/Downloads/desene_animate

cd desene_animate

gpg --import private.key
gpg --import public.key

git clone git@bitbucket.org:seriiserii825/passwords.git ~/Downloads/passwords

cd ~/.password-store
rm * -rf

cp -r ~/Downloads/passwords/* ~/.password-store
cp -r ~/Downloads/passwords/.git ~/.password-store

cd ~/.password-store

read -p "You need to edit the private key. Press enter to continue" edit

if [ -z $edit ]; then
    echo "${tmagenta}Edit private key${treset}"
    exit 1
fi


