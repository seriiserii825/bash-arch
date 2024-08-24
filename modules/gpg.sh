sudo pacman -S pass unzip zip
cd ~/Downloads

zip_file_path=/home/serii/Downloads/desene_animate.zip

if [ ! -f $zip_file_path ]; then
    echo "${tmagenta}$zip_file_path does not exist${treset}"
    exit 1
fi

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

echo "${tmagenta}Edit private key${treset}"
