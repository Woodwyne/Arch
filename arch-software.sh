#! /usr/bin/env bash


software=(
	  # System utility
	  curl
	  wget
	  bash-completion
	  htop
    cmatrix
    zsh
    neofetch
    figlet
	  tmux
	  vim
    zip
    mc
	  unzip
	  7z

    # Programming
    php
    npm
    python3
    gcc
    make

    # Desktop application
    firefox
	  chromium
	  filezilla
    code
    thunderbird
    telegram-desktop
    keepassxc
    qbittorrent
    virtualbox
    veracrypt
    kleopatra
    vlc
    galculator
    virtualbox
    virtualbox-host-modules-arch
)


if [ `id -u` -eq 0 ]
then
    	pacman -Suy
	for soft in "${software[@]}"
	do
        figlet $soft
    	pacman -S $soft  --needed
	done
else
    echo "NEED ROOT PERMISSION"
fi
