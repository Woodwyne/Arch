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
    nnn
    ranger
    unzip

    # Developed   
    php
    npm
    python3
    gcc
    make

    # Desktop application
    xarchiver	
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
    vlc 	# Video player
    evince 	# PDF reader
    galculator
    virtualbox
    virtualbox-host-modules-arch

    # Codecs and plugins
    a52dec
    faac
    faad2
    flac
    jasper
    lame
    libdca
    libdv
    libmad
    libmpeg2
    libtheora
    libvorbis
    libxv
    wavpack
    x264
    xvidcore
)


if [ `id -u` -ne 0 ]
then
    echo "[-] Need root permission"
    exit 1
fi
sudo pacman -Suy
for soft in "${software[@]}"
do
    figlet $soft
    pacman -S $soft  --needed --noconfirm
done

if [ "$?" -eq 0 ]
then
    echo "[+] Install done without error"
else
    echo "[-] Error install"
fi
