#! /usr/bin/env bash

xfce4=(
    xfce4
    xfce4-goodies
    gvfs
    lightdm
    lightdm-gtk-greeter
    lightdm-gtk-greeter-settings
)

if [ `id -u` -eq 0 ]
then
    for soft in "${xfce4[@]}"
    do
        sudo pacman -S $soft
    done
else
    echo "Need root permission"
fi
