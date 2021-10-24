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
	echo -e "\033[1;36m ✅ Operating System : 'Ubuntu'"
	echo -e "\033[1;36m 😎 User : $(whoami) \n"
	echo -e "\n"
       	echo -e "\033[31;1m$user, First we need to update the our system ⬇️  \033[31;0m"
	echo -e "\n"
	echo -e "\033[1;34mSo, I am Running 'sudo apt update' command \033[1;0m \n"
	echo -e "\033[1;31mPlease wait a few minutes, the time depends on your internet connection & pc performance. \033[1;0m⌛ \n\n"
	sudo apt update -y
        'clear'
        echo -e "\n"
        tput bold 1; echo "The 'newos' Programme 👾" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
	echo -e "\n"
	echo -e "\033[1;34m Now, I am Running 'sudo apt upgrade' command \033[1;0m"
        echo -e "\n \033[1;31mPlease wait a few minutes, the time depends on your internet connection & pc performance. \033[1;0m⌛ \n\n"
	sudo apt upgrade -y
elif [ $os == 2 ]
then
	echo "Fedora"
elif [ $os == 3 ]
then
	echo "Arch"
else
	echo "Other"
fi
