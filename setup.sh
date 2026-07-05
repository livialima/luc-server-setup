#!/usr/bin/env bash

# Exit on any error
set -e

#required for all lessons
echo "Updating package lists..."
apt update -y

echo "Upgrading installed packages..."
apt upgrade -y

#required for day_01
apt install -y ifstat iftop

#required for day_02
apt install -y snap snapd
snap install tldr

#required for day_04
#hostnamectl set-hostname myserver

#required for day_09
apt install -y nmap

#required for day_10
apt install -y at

#required for day_11
apt install -y locate
updatedb

#required for day_17
apt install -y build-essential

#finish setup
echo "Removing unnecessary packages and cleaning cache..."
apt autoremove -y
apt autoclean -y

echo "Setup complete."

#switch to ubuntu user
su - ubuntu