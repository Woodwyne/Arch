#! /usr/bin/env bash

xfce4=(
    xfce4
    xfce4-goodies
    gvfs
    lightdm
    lightdm-gtk-greeter
    lightdm-gtk-greeter-settings
)

if [ `id -u` -ne 0 ]
then
    echo "[-] Need root permission"
    exit 1
fi

for soft in "${xfce4[@]}"
do
    sudo pacman -S $soft
done
sudo  systemctl enable lightdm
