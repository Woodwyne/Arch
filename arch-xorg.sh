#!/usr/bin/env bash
 
xorg=(
        nvidia
        nvidia-settings
        xorg-server
        xorg-apps            
        xorg-xinit            
        xf86-video-intel     
        mesa              
        xf86-input-libinput 
)

if [ `id -u ` -ne 0 ]
then
    echo "[-] Need root"
    exit 1
fi

for x in "${xorg[@]}"
do
    figlet $x
    sudo pacman -S "$x" --noconfirm --needed
done
