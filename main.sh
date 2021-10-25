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
    echo -n -e "\033[1;32m \n 💻 Updating ..."; sudo apt-get update -y > /dev/null; 
	echo -n -e "\033[1;32m \n 💻 Upgradng ..."; sudo apt-get upgrade -y > /dev/null;
	echo -n -e "\033[1;32m \n ⬇️ Installing Ubuntu Restricted Extras ..."; sudo apt-get install -y ubuntu-restricted-extras > /dev/null;
	echo -n -e "\033[1;32m \n ⬇️ Installing Gnome Tweaks ..."; sudo apt-get install -y gnome-tweaks > /dev/null;
	echo -n -e "\033[1;32m \n ⬇️ Installing neofetch ..."; sudo apt-get install -y neofetch > /dev/null;
	echo -n -e "\033[1;32m \n ⬇️ Installing flatpak ..."; sudo apt-get install -y flatpak > /dev/null;
	echo -n -e "\033[1;32m \n ⬇️ Installing sl ..."; sudo apt-get install -y sl > /dev/null;
	echo -n -e "\033[1;32m \n ⬇️ Installing tlp ..."; sudo apt-get install -y tlp > /dev/null;
	echo -n -e "\033[1;34m \n ✅ Starting tlp ..."; sudo tlp start > /dev/null;
	echo -n -e "\033[1;32m \n ⬇️ Installing htop ..."; sudo apt-get install -y htop > /dev/null;
	echo -n -e "\033[1;32m \n ⬇️ Installing vim ..."; sudo apt-get install -y vim > /dev/null; 
	echo -n -e "\033[1;34m \n 💻 Adding repository ppa:fish-shell/release-3 ..."; sudo apt-add-repository ppa:fish-shell/release-3 > /dev/null;
	echo -n -e "\033[1;32m \n ⬇️ Installing fish..."; sudo apt-get install fish > /dev/null; 
	echo -n -e "\033[1;34m \n 💻 Making fish is default ..."; chsh -s /usr/bin/fish > /dev/null;
	echo -n -e "\033[1;34m \n 💻 Cloning auto-cpufreq.git ..."; git clone https://github.com/AdnanHodzic/auto-cpufreq.git > /dev/null;
    echo -n -e "\033[1;32m \n ⬇️ Installing auto-cpufreq ..."; cd auto-cpufreq && sudo ./auto-cpufreq-installer > /dev/null;
elif [ $os == 2 ]
then
	echo "Fedora"
elif [ $os == 3 ]
then
	echo "Arch"
else
	echo "Other"
fi
