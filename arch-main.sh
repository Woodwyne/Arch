#! /usr/bin/env bash


if [ `id -u ` -ne 0 ]
then
    echo "[-] Need root"
    exit 1
fi
./arch-update.sh
./arch-audio.sh
./arch-software.sh
./arch-network.sh
./arch-xorg.sh
./arch-xfce4.sh
