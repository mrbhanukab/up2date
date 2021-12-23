    echo -e "\n"
	tput bold 1; echo "The 'newos' Programme 👾" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
	echo -e "\n"
	echo -e "\033[1;31mPlease wait a few minutes, the time is depends\ on your internet connection & pc performance. \033[1;0m⌛ \n"
	echo -e "\033[1;36m ✅ Operating System : 'Ubuntu'"
	echo -e "\033[1;36m 😎 User : $(whoami) \n"
	echo -n -e "\033[1;32m \n 🧑‍🔧 Fixing Broken Install ..."; sudo apt-get --fix-broken install -y > /dev/null; 
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
	echo -n -e "\033[1;32m \n ⬇️ Installing wget ..."; sudo apt-get install -y wget > /dev/null;
	echo -n -e "\033[1;34m \n 💻 Adding repository ppa:fish-shell/release-3 ..."; sudo apt-add-repository ppa:fish-shell/release-3 > /dev/null;
	echo -n -e "\033[1;32m \n ⬇️ Installing fish..."; sudo apt-get install fish > /dev/null; 
	echo -n -e "\033[1;34m \n 💻 Making fish is default ..."; chsh -s /usr/bin/fish > /dev/null;
	echo -n -e "\033[1;34m \n 💻 Cloning auto-cpufreq.git ..."; cd && git clone https://github.com/AdnanHodzic/auto-cpufreq.git > /dev/null;
    echo -n -e "\033[1;32m \n ⬇️ Installing auto-cpufreq ... \n"; cd auto-cpufreq && sudo ./auto-cpufreq-installer > /dev/null;
	echo -e "\n"
	echo -e " \033[31;5mSelect Your Favorite Web Browser 👇\033[0m"
	echo -e "\n 1.Firefox \n 2.Chrome \n 3.Brave \n 4.Vivaldi \n Any other to cancel \n"
	read -p 'What is selected Browser? [1/2/3/4]:' wb
	if [ $wb == 1 ]
	then
	    echo -n -e "\033[1;32m \n ⬇️ Installing Firefox ..."; sudo apt-get install -y firefox > /dev/null; 
	elif [ $wb == 2 ]
	then
		echo -n -e "\033[1;32m \n ⬇️ Downloading Chrome ..."; sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null; 
		echo -n -e "\033[1;32m \n ⬇️ Installing Chrome ..."; sudo apt-get install ./google-chrome-stable_current_amd64.deb > /dev/null; 
	elif [ $wb == 3 ]
	then
		echo -n -e "\033[1;32m \n ⬇️ Installing curl ..."; sudo apt-get install apt-transport-https curl > /dev/null;
		echo -n -e "\033[1;32m \n ⬇️ Downloading Brave ..."; sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg > /dev/null;
		echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
		echo -n -e "\033[1;32m \n ⬇️ Installing Brave ..."; sudo apt-get update && sudo apt-get install brave-browser > /dev/null;
	elif [ $wb == 4 ]
	then
		echo -n -e "\033[1;32m \n ⬇️ Downloading Vivaldi ..."; wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add - && sudo add-apt-repository 'deb https://repo.vivaldi.com/archive/deb/ stable main' > /dev/null;
		echo -n -e "\033[1;32m \n ⬇️ Installing Vivaldi ..."; sudo apt-get update && sudo apt-get install vivaldi-stable > /dev/null;
	elif [ $wb == 12 ]
	then
		echo -n -e "\033[1;32m \n ⬇️ Installing Firefox ..."; sudo apt-get install -y firefox > /dev/null;
		echo -n -e "\033[1;32m \n ⬇️ Downloading Chrome ..."; sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null; 
		echo -n -e "\033[1;32m \n ⬇️ Installing Chrome ..."; sudo apt-get install ./google-chrome-stable_current_amd64.deb > /dev/null; 
	elif [ $wb == 123 ]
	then
		echo -n -e "\033[1;32m \n ⬇️ Installing Firefox ..."; sudo apt-get install -y firefox > /dev/null;
		echo -n -e "\033[1;32m \n ⬇️ Downloading Chrome ..."; sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null; 
		echo -n -e "\033[1;32m \n ⬇️ Installing Chrome ..."; sudo apt-get install ./google-chrome-stable_current_amd64.deb > /dev/null;
		echo -n -e "\033[1;32m \n ⬇️ Installing curl ..."; sudo apt-get install apt-transport-https curl > /dev/null;
		echo -n -e "\033[1;32m \n ⬇️ Downloading Brave ..."; sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg > /dev/null;
		echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
		echo -n -e "\033[1;32m \n ⬇️ Installing Brave ..."; sudo apt-get update && sudo apt-get install brave-browser > /dev/null;
	elif [ $wb == 1234 ]
	then
	    echo -n -e "\033[1;32m \n ⬇️ Installing Firefox ..."; sudo apt-get install -y firefox > /dev/null;
		echo -n -e "\033[1;32m \n ⬇️ Downloading Chrome ..."; sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null; 
		echo -n -e "\033[1;32m \n ⬇️ Installing Chrome ..."; sudo apt-get install ./google-chrome-stable_current_amd64.deb > /dev/null;
		echo -n -e "\033[1;32m \n ⬇️ Installing curl ..."; sudo apt-get install apt-transport-https curl > /dev/null;
		echo -n -e "\033[1;32m \n ⬇️ Downloading Brave ..."; sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg > /dev/null;
		echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
		echo -n -e "\033[1;32m \n ⬇️ Installing Brave ..."; sudo apt-get update && sudo apt-get install brave-browser > /dev/null;
		echo -n -e "\033[1;32m \n ⬇️ Downloading Vivaldi ..."; wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add - && sudo add-apt-repository 'deb https://repo.vivaldi.com/archive/deb/ stable main' > /dev/null;
		echo -n -e "\033[1;32m \n ⬇️ Installing Vivaldi ..."; sudo apt-get update && sudo apt-get install vivaldi-stable > /dev/null;
	elif [ $wb == 23 ]
	then
	    echo -n -e "\033[1;32m \n ⬇️ Downloading Chrome ..."; sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null; 
		echo -n -e "\033[1;32m \n ⬇️ Installing Chrome ..."; sudo apt-get install ./google-chrome-stable_current_amd64.deb > /dev/null; 
		echo -n -e "\033[1;32m \n ⬇️ Installing curl ..."; sudo apt-get install apt-transport-https curl > /dev/null;
		echo -n -e "\033[1;32m \n ⬇️ Downloading Brave ..."; sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg > /dev/null;
		echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
		echo -n -e "\033[1;32m \n ⬇️ Installing Brave ..."; sudo apt-get update && sudo apt-get install brave-browser > /dev/null;
	elif [ $wb == 234 ]
	then
		echo -n -e "\033[1;32m \n ⬇️ Downloading Chrome ..."; sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null; 
		echo -n -e "\033[1;32m \n ⬇️ Installing Chrome ..."; sudo apt-get install ./google-chrome-stable_current_amd64.deb > /dev/null;
		echo -n -e "\033[1;32m \n ⬇️ Installing curl ..."; sudo apt-get install apt-transport-https curl > /dev/null;
		echo -n -e "\033[1;32m \n ⬇️ Downloading Brave ..."; sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg > /dev/null;
		echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
		echo -n -e "\033[1;32m \n ⬇️ Installing Brave ..."; sudo apt-get update && sudo apt-get install brave-browser > /dev/null;
		echo -n -e "\033[1;32m \n ⬇️ Downloading Vivaldi ..."; wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add - && sudo add-apt-repository 'deb https://repo.vivaldi.com/archive/deb/ stable main' > /dev/null;
		echo -n -e "\033[1;32m \n ⬇️ Installing Vivaldi ..."; sudo apt-get update && sudo apt-get install vivaldi-stable > /dev/null;
	elif [ $wb == 34 ]
	then
		echo -n -e "\033[1;32m \n ⬇️ Installing curl ..."; sudo apt-get install apt-transport-https curl > /dev/null;
		echo -n -e "\033[1;32m \n ⬇️ Downloading Brave ..."; sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg > /dev/null;
		echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
		echo -n -e "\033[1;32m \n ⬇️ Installing Brave ..."; sudo apt-get update && sudo apt-get install brave-browser > /dev/null;
		echo -n -e "\033[1;32m \n ⬇️ Downloading Vivaldi ..."; wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add - && sudo add-apt-repository 'deb https://repo.vivaldi.com/archive/deb/ stable main' > /dev/null;
		echo -n -e "\033[1;32m \n ⬇️ Installing Vivaldi ..."; sudo apt-get update && sudo apt-get install vivaldi-stable > /dev/null;
	else
	    echo "Not Installing Any Web Browser"