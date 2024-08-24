function installPip(){
  python3 -m venv venv
  source venv/bin/activate
  python3 -m pip install --upgrade pip
  python3 -m pip install -r requirements.txt
}

py_private_url="/home/serii/Documents/python/py-private"
git clone git@bitbucket.org:seriiserii825/py-private.git $py_private_url
cd $py_private_url
installPip

wp_url="/home/serii/Documents/python/wp-python"
git clone git@github.com:seriiserii825/wp-python.git $wp_url
cd $wp_url
installPip

py_scripts_url="/home/serii/Documents/python/python-scripts"
git clone git@bitbucket.org:seriiserii825/python-scripts.git $py_scripts_url
cd $py_scripts_url
installPip

py_parsing_url="/home/serii/Documents/python/py-parsing"
git clone git@github.com:seriiserii825/py-parsing.git $py_parsing_url
cd $py_parsing_url
installPip

lf_path="/home/serii/Documents/python/py-lf"
git clone git@github.com:seriiserii825/py-lf.git $lf_path
cd $lf_path
installPip

py_pacman_path="/home/serii/Documents/python/py-pacman"
git clone git@github.com:seriiserii825/py-pacman.git $py_pacman_path
cd $py_pacman_path
installPip

read -p "${tblue}Change .git in bash-arch with one from github, Press enter to continue${treset}" change
if [ -z "$change" ]; then
  exit 0
else
  exit 1
fi

