#! /usr/bin/env bash

if [ `id -u` -eq 0 ]
then
    pacman -Suyy --noconfirm --needed # Update package and repository
    pacman -Qqdt --noconfirm  # Removing all orphaned packages 
    pacman -Scc --noconfirm   # Clearing the package cache 
else
    echo -e " _   _               _                 _       "
    echo -e "| \ | | ___  ___  __| |  ___ _   _  __| | ___  "
    echo -e '|  \| |/ _ \/ _ \/ _` | / __| | | |/ _` |/ _ \ '
    echo -e "| |\  |  __/  __/ (_| | \__ \ |_| | (_| | (_)|"
    echo -e "|_| \_|\___|\___|\__,_| |___/\__,_|\__,_|\___/ "
    echo -e "                                               "
fi
