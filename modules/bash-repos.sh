# cd ~/Documents
# git clone git@github.com:seriiserii825/bash.git ~/Documents/bash
# git clone git@github.com:seriiserii825/bash-info.git ~/Documents/bash-info
# git clone git@bitbucket.org:seriiserii825/plugins-wp.git ~/Documents/plugins-wp
# git clone git@github.com:seriiserii825/wallpapers.git ~/Picture/wallpapers
if [ ! -d ~/Documents/wordpress ]; then
  mkdir ~/Documents/wordpress
fi
# wget -O ~/Documents/wordpress/wordpress.zip  https://ru.wordpress.org/latest-ru_RU.zip 
# wget -O ~/Documents/wordpress/woocommerce.zip https://downloads.wordpress.org/plugin/woocommerce.latest-stable.zip 
# unzip ~/Documents/wordpress/wordpress.zip -d ~/Documents/wordpress
# rm ~/Documents/wordpress/wordpress.zip
# unzip ~/Documents/wordpress/woocommerce.zip -d ~/Documents/wordpress
# rm ~/Documents/wordpress/woocommerce.zip
wget -O ~/Documents/wordpress/wp-pagenavi.zip https://downloads.wordpress.org/plugin/wp-pagenavi.2.94.1.zip
unzip ~/Documents/wordpress/wp-pagenavi.zip -d ~/Documents/wordpress
rm ~/Documents/wordpress/wp-pagenavi.zip
