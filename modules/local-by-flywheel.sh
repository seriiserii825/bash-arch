sudo pacman -S php mariadb
sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo systemctl start mysql.service
sudo systemctl status mysql.service

read -p "${tblue}Set password and answer 'no' for other questions, press enter to continue${treset}"
sudo mysql_secure_installation
sudo systemctl enable mariadb

# /etc/php/php.ini uncomment extension=mysqli
sudo sed -i 's/;extension=mysqli/extension=mysqli/g' /etc/php/php.ini

read -p "${tblue}Press enter to install local-by-flywheel, press enter to continue${treset}"

yay -S local-by-flywheel-bin
