#! /usr/bin/env bash

network=(
	wpa_suplication,
	dialog
	networkmanager
	openvpn
	network-manager-applet
	network-manager-vpnc
	network-manager-applet
	dhclient
	libsecret
)
if [ `id -u` -eq 0 ]
then
    sudo pacman -Suuy
    for app in ${network[@]}
    do
        sudo pacman -S $app --noconfirm --needed
    done
else
echo "






"

fi
