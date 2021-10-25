#! /usr/bin/bash

'clear'
user=$(whoami)
echo
tput bold 1; echo "Hello $user!, welcome to 'newos' programme. 🤩" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo -e "\n"
echo -e " \033[31;5mSelect Your Linux Distro 👇\033[0m"
echo -e "\n 1.Ubuntu/Debian \n 2.Fedora \n 3.Arch\n" 
read -p 'What is Your Linux Distro? [1/2/3]:' os
'clear'

if [ $os == 1 ]
then
	sudo apt update -y
	sudo apt upgrade -y
	sudo apt-get install -y ubuntu-restricted-extras
	sudo apt install -y gnome-tweaks
	sudo apt install -y neofetch
	sudo apt install -y flatpak
	sudo apt install -y sl
	sudo apt-get install -y tlp
	sudo tlp start
	sudo apt install -y htop
	sudo apt install -y vim
	sudo apt-add-repository ppa:fish-shell/release-3
	sudo apt install fish
	chsh -s /usr/bin/fish
	git clone https://github.com/AdnanHodzic/auto-cpufreq.git
    cd auto-cpufreq && sudo ./auto-cpufreq-installer
elif [ $os == 2 ]
then
	echo "Fedora"
elif [ $os == 3 ]
then
	echo "Arch"
else
	echo "Other"
fi
