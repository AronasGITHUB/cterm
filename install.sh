#!/bin/bash

read -p "What package manager do you use? (Example: apt, yum):" pkg
echo "Installing necessary packages.."
sudo $pkg install figlet
sudo $pkg install neofetch
wget https://raw.githubusercontent.com/AronasGITHUB/cterm/refs/heads/main/cterm.sh
echo "Applying cterm.."
chmod +x cterm.sh
echo "./cterm.sh" >> ".bashrc"
echo "Get ready to restart your terminal, 3 seconds left"
sleep 3
source ~/.bashrc
