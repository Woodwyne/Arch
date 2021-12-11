#! /usr/bin/env bash

sudo pacman -Suyy --noconfirm --needed # Update package and repository
sudo pacman -Qqdt --noconfirm  # Removing all orphaned packages 
sudo pacman -Scc --noconfirm   # Clearing the package cache 
