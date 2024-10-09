## Before archinstall

```
lsblk
cfdisk /dev/sda
delete all partitions
```

## connect to wifi

```
rfkill list
rfkill unblock wifi
ip link
ip link set wlan0 up
iwctl
device list
station wlan0 scan
station wlan0 get-networks
station wlan0 connect SSID(wait 5sec before quit)
quit
ping ya.ru
```

## archinstall

```
set disk configuration
choos networkmanager
```

## After archinstall and before reboot

```
sudo pacman -S linux-lts linux-lts-headers
old - sudo pacman -S linux-headers

sudo pacman -S broadcom-wl networkmanager
sudo systemctl enable NetworkManager
```

## After reboot

```
nmcli device wifi list
nmcli device wifi connect SSID password PASSWORD
```

## start script
```
create dir Documents
and clone this repo
~/Documents/bash-arch
cd ~/Documents/bash-arch
chmod +x arch.sh
./arch.sh
```
