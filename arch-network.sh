#! /usr/bin/env bash

network=(
  	dnsutils
  	dialog
  	networkmanager
	openvpn
	network-manager-applet
	network-manager-applet
	dhclient
	libsecret
  	net-tools
)
if [ `id -u` -ne 0 ]
then
    echo "[-] Need root permission"
    exit
fi

sudo pacman -Suuy

for app in ${network[@]}
do
    sudo pacman -S $app --noconfirm --needed
done

sudo systemctl restart NetworkManager
if [ "$?" -eq 0 ]
then
    echo "[+] Install done"
else
    echo "[-] Install error"
fi
