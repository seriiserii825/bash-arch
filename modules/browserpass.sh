#! /bin/bash 

cd ~/Downloads

wget https://github.com/browserpass/browserpass-native/releases/download/3.1.0/browserpass-linux64-3.1.0.tar.gz
tar -xvf browserpass-linux64-3.1.0.tar.gz

curl https://maximbaz.com/pgp_keys.asc | gpg --import
curl https://keybase.io/maximbaz/pgp_keys.asc | gpg --import
gpg --recv-keys 56C3E775E72B0C8B1C0C1BD0B5DB77409B11B601

cd browserpass-linux64-3.1.0
make BIN=browserpass-linux64 configure
sudo make BIN=browserpass-linux64 install

cd /usr/lib/browserpass
make host-chrome-user
