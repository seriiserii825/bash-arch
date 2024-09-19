function installPip(){
  python3 -m venv venv
  source venv/bin/activate
  python3 -m pip install --upgrade pip
  python3 -m pip install -r requirements.txt
}

py_private_url="/home/serii/Documents/python/py-private"
if [ ! -d $py_private_url ]; then
  git clone git@bitbucket.org:seriiserii825/py-private.git $py_private_url
  cd $py_private_url
  installPip
fi

wp_url="/home/serii/Documents/python/wp-python"
if [ ! -d $wp_url ]; then
  git clone git@github.com:seriiserii825/wp-python.git $wp_url
  cd $wp_url
  installPip
fi

py_scripts_url="/home/serii/Documents/python/python-scripts"
if [ ! -d $py_scripts_url ]; then
  git clone git@bitbucket.org:seriiserii825/python-scripts.git $py_scripts_url
  cd $py_scripts_url
  installPip
fi

py_parsing_url="/home/serii/Documents/python/py-parsing"
if [ ! -d $py_parsing_url ]; then
  git clone git@github.com:seriiserii825/py-parsing.git $py_parsing_url
  cd $py_parsing_url
  installPip
fi

lf_path="/home/serii/Documents/python/py-lf"
if [ ! -d $lf_path ]; then
  git clone git@github.com:seriiserii825/py-lf.git $lf_path
  cd $lf_path
  installPip
fi

py_pacman_path="/home/serii/Documents/python/py-pacman"
if [ ! -d $py_pacman_path ]; then
  git clone git@github.com:seriiserii825/py-pacman.git $py_pacman_path
  cd $py_pacman_path
  installPip
fi

py_scss_path="/home/serii/Documents/python/py-scss"
if [ ! -d $py_scss_path ]; then
  git clone https://github.com/seriiserii825/py-scss
  cd $py_scss_path
  installPip
fi

py_wc_path="/home/serii/Documents/python/wc-python"
if [ ! -d $py_wc_path ]; then
  git clone git@github.com:seriiserii825/wc-python.git
  cd $py_wc_path
  installPip
fi

if [ ! -d ~/Documents/bash-arch ]; then
  git clone git@github.com:seriiserii825/bash-arch.git ~/Downloads/bash-arch
  rm -rf ~/Documents/bash-arch/.git
  cp -r ~/Downloads/bash-arch/.git ~/Documents/bash-arch/.git
fi

