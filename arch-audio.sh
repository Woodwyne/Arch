#! /usr/bin/env bash

# Audio drivers and pluggin for Arch linux
# Array with software

audio=(
    alsa-utils        
    alsa-plugins    
    pulseaudio       
    pulseaudio-alsa  
    pavucontrol     
    volumeicon
)

# Check root permission
if [ `id -u` -ne 0 ]
then
    echo "[-] Need root permission"
    exit 1
fi

# Install software
for aud in "${audio[@]}"
do
    if [ ! -e /usr/share/figlet ]
    then
         pacman -S figlet
    else
        figlet $aud
    fi
    pacman -S $aud --noconfirm --needed
done
