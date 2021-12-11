#! /usr/bin/env bash

pacman -Suyy --noconfirm --needed # Update package and repository
pacman -Qqdt --noconfirm  # Removing all orphaned packages 
pacman -Scc --noconfirm   # Clearing the package cache 
