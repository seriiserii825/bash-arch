makepkg_file_path="/etc/makepkg.conf"

proc_numbr=$(nproc)
echo "${tblue}Number of processors: $proc_numbr${treset}"
if grep -q "#MAKEFLAGS=\"-j2\"" $makepkg_file_path; then
  sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j'$proc_numbr'"/' $makepkg_file_path
  echo "${tgreen}MAKEFLAGS is now uncommented${treset}"
else 
  echo "${tmagenta}MAKEFLAGS is already uncommented${treset}"
fi

# show line with MAKEFLAGS
grep -n "MAKEFLAGS" $makepkg_file_path
