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
    echo -e "\n"
	tput bold 1; echo "The 'newos' Programme 👾" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
	echo -e "\n"
	echo -e "\033[1;31mPlease wait a few minutes, the time depends on your internet connection & pc performance. \033[1;0m⌛ \n"
	echo -e "\033[1;36m ✅ Operating System : 'Ubuntu'"
	echo -e "\033[1;36m 😎 User : $(whoami) \n"
    echo -n -e "\033[1;32m 💻 Updating ..."; sudo apt update -y > /dev/null; echo -e " /n"; 
	echo -n -e "\033[1;32m 💻 Upgradng ..."; sudo apt upgrade -y > /dev/null; echo -e " /n"; 
	echo -n -e "\033[1;32m ⬇️ Installing Ubuntu Restricted Extras ..."; sudo apt-get install -y ubuntu-restricted-extras > /dev/null; echo -e " /n"; 
	echo -n "\033[1;32m ⬇️ Installing Gnome Tweaks ..."; sudo apt install -y gnome-tweaks > /dev/null; echo -e " /n"; 
	echo -n -e "\033[1;32m ⬇️ Installing neofetch ..."; sudo apt install -y neofetch > /dev/null; echo -e " /n"; 
	echo -n -e "\033[1;32m ⬇️ Installing flatpak ..."; sudo apt install -y flatpak > /dev/null; echo -e " /n"; 
	echo -n -e "\033[1;32m ⬇️ Installing sl ..."; sudo apt install -y sl > /dev/null; echo -e " /n"; 
	echo -n -e "\033[1;32m ⬇️ Installing tlp ..."; sudo apt-get install -y tlp > /dev/null; echo -e " /n"; 
	echo -n -e "\033[1;34m ✅ Starting tlp ..."; sudo tlp start > /dev/null; echo -e " /n"; 
	echo -n -e "\033[1;32m ⬇️ Installing htop ..."; sudo apt install -y htop > /dev/null; echo -e " /n"; 
	echo -n -e "\033[1;32m ⬇️ Installing vim ..."; sudo apt install -y vim > /dev/null; echo -e " /n"; 
	echo -n -e "\033[1;34m 💻 Adding repository ppa:fish-shell/release-3 ..."; sudo apt-add-repository ppa:fish-shell/release-3 > /dev/null; echo -e " /n"; 
	echo -n -e "\033[1;32m ⬇️ Installing fish..."; sudo apt install fish > /dev/null; echo -e " /n"; 
	echo -n -e "\033[1;34m 💻 Making fish is default ..."; chsh -s /usr/bin/fish > /dev/null; echo -e " /n"; 
	echo -n -e "\033[1;34m 💻 Cloning auto-cpufreq.git ..."; git clone https://github.com/AdnanHodzic/auto-cpufreq.git > /dev/null; echo -e " /n"; 
    echo -n -e "\033[1;32m ⬇️ Installing auto-cpufreq ..."; cd auto-cpufreq && sudo ./auto-cpufreq-installer > /dev/null; echo -e " /n"; 
elif [ $os == 2 ]
then
	echo "Fedora"
elif [ $os == 3 ]
then
	echo "Arch"
else
	echo "Other"
fi
