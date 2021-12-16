#! /usr/bin/env bash

if [ `id -u` -ne 0 ]
then
    echo "[-] Need root permission"
    exit 1
fi

echo "[+] Start update"
sudo pacman -Suyy --noconfirm --needed # Update package and repository
sudo pacman -Qqdt --noconfirm  # Removing all orphaned packages 
sudo pacman -Scc --noconfirm   # Clearing the package cache 
echo "[+] End script"
