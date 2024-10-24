#!/bin/bash     

tilde="~"

clear
figlet cTerminal
echo "---------------------------------------"
neofetch
echo "---------------------------------------"
echo -e "\e[33mHello! Welcome to\e[0m\e[32m the cTerminal. We hope \e[0m\e[31m you enjoy cTerm!\e[0m"

# Define USERNAME, HOSTNAME, and SHELL if not already set
USERNAME="${USERNAME:-$(whoami)}"
HOSTNAME="${HOSTNAME:-$(hostname)}"
SHELL="${SHELL:-$SHELL}"

while true; do
	if [ "$PWD" = "$HOME" ]; then
          prompt_dir="$tilde"
	else
  	  prompt_dir="$PWD"
	fi

	read -p "$USERNAME@$HOSTNAME&$SHELL:$prompt_dir$ " cmd


    # Caution with executing user commands
    eval "$cmd"
done
