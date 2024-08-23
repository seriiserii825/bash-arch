# in /etc/locale.gen, uncomment ru_RU.UTF-8 UTF-8
if grep -q "#ru_RU.UTF-8 UTF-8" /etc/locale.gen; then
    sudo sed -i 's/#ru_RU.UTF-8 UTF-8/ru_RU.UTF-8 UTF-8/' /etc/locale.gen
fi

sudo locale-gen
localectl list-locales
