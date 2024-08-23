# pacman_file_path="/etc/pacman.conf"
pacman_file_path="/home/serii/Downloads/pacman.conf"

# uncomment Color
## if Color is commented
if grep -q "#Color" $pacman_file_path; then
  sed -i 's/#Color/Color/' $pacman_file_path
  echo "${tgreen}Color is now uncommented${treset}"
else 
  echo "${tmagenta}Color is already uncommented${treset}"
fi

# uncomment ParallelDownloads
if grep -q "#ParallelDownloads" $pacman_file_path; then
  sed -i 's/#ParallelDownloads/ParallelDownloads/' $pacman_file_path
  echo "${tgreen}ParallelDownloads is now uncommented${treset}"
else
  echo "${tmagenta}ParallelDownloads is already uncommented${treset}"
fi

# add mirrors
if grep -q "Server = https://mirror.js-webcoding.de/pub/archlinux/\$repo/os/\$arch" $pacman_file_path; then
  echo "${tmagenta}mirror is already added${treset}"
else
  cat <<TEST >> "$pacman_file_path"
Server = https://mirror.js-webcoding.de/pub/archlinux/$repo/os/$arch
Server = https://mirror.f4st.host/archlinux/$repo/os/$arch
Server = https://archmirror.tomforb.es/$repo/os/$arch
Server = https://mirrors.kernel.org/archlinux/$repo/os/$arch
Server = https://lug.mtu.edu/archlinux/$repo/os/$arch
Server = https://mirrors.ocf.berkeley.edu/archlinux/$repo/os/$arch
TEST
echo "${tgreen}mirror is now added${treset}"
fi

bat $pacman_file_path
