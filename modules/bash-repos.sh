cd ~/Documents
git clone git@github.com:seriiserii825/bash.git ~/Documents/bash
git clone git@github.com:seriiserii825/bash-info.git ~/Documents/bash-info
git clone git@bitbucket.org:seriiserii825/plugins-wp.git ~/Documents/plugins-wp
mkdir ~/Documents/wordrpess
wget -O ~/Documents/wordrpess/wordpress.zip  https://ru.wordpress.org/latest-ru_RU.zip 
wget -O ~/Documents/wordrpess/woocommerce.zip https://downloads.wordpress.org/plugin/woocommerce.latest-stable.zip 
unzip ~/Documents/wordrpess/wordpress.zip -d ~/Documents/wordrpess
rm ~/Documents/wordrpess/wordpress.zip
unzip ~/Documents/wordrpess/woocommerce.zip -d ~/Documents/wordrpess
rm ~/Documents/wordrpess/woocommerce.zip
