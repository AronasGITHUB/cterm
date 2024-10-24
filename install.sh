#!/bin/bash

read -p "What package manager do you use? (Example: apt, yum):" pkg
echo "Installing necessary packages.."
sudo $pkg install figlet
sudo $pkg install neofetch

echo "Applying cterm.."
c
