#! /usr/bin/env bash

# Audio drivers and pluggin for Arch linux

audio=(
    alsa-utils        
    alsa-plugins    
    pulseaudio       
    pulseaudio-alsa  
    pavucontrol     
    volumeicon
)
if [ `id -u` -eq 0 ]
then
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
fi
