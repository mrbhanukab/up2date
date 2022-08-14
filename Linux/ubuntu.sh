echo "The 'newos' Programme 👾" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo -e "\n"
	
echo -e "\033[1;31mPlease wait a few minutes, the time is depends on your internet connection & pc performance. \033[1;0m⌛ \ n" 

echo -n -e "\033[1;32m \n 🧑‍🔧 Fixing Broken Install ..."; sudo apt-get --fix-broken install -y > /dev/null;
	
echo -n -e "\033[1;32m \n 💻 Updating ..."; sudo apt-get update -y > /dev/null;
    
echo -n -e "\033[1;32m \n 💻 Upgradng ..."; sudo apt-get upgrade -y > /dev/null;
	
echo -n -e "\033[1;32m \n ⬇️ Installing Ubuntu Restricted Extras ..."; sudo apt-get install -y ubuntu-restricted-extras > /dev/null;
	
	echo -n -e "\033[1;32m \n ⬇️ Installing Gnome Tweaks ..."; sudo apt-get install -y gnome-tweaks > /dev/null;
	
	echo -n -e "\033[1;32m \n ⬇️ Installing neofetch ..."; sudo apt-get install -y neofetch > /dev/null;
	
	echo -n -e "\033[1;32m \n ⬇️ Installing Preload ..."; sudo apt-get install -y preload > /dev/null;
	
	echo -n -e "\033[1;32m \n ⬇️ Installing flatpak ..."; sudo apt-get install -y flatpak && sudo apt install gnome-software-plugin-flatpak -y && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo > /dev/null;
	
	echo -n -e "\033[1;32m \n ⬇️ Installing htop ..."; sudo apt-get install -y htop > /dev/null;
	
	echo -n -e "\033[1;32m \n ⬇️ Installing vim ..."; sudo apt-get install -y vim > /dev/null;
	
	echo -n -e "\033[1;32m \n ⬇️ Installing wget ..."; sudo apt-get install -y wget > /dev/null;
	
	echo -n -e "\033[1;34m \n 💻 Adding repository ppa:fish-shell/release-3 ..."; sudo apt-add-repository ppa:fish-shell/release-3 > /dev/null;
	
	echo -n -e "\033[1;32m \n ⬇️ Installing fish..."; sudo apt-get install -y fish > /dev/null;
	
	echo -n -e "\033[1;34m \n 💻 Making fish is default ..."; chsh -s /usr/bin/fish > /dev/null;
	
	echo -n -e "\033[1;34m \n ⬇️ Installing VSCode..."; chsh -s /usr/bin/fish > /dev/null && sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -y && sudo apt-get update -y && sudo apt install code -y;
	
	echo -n -e "\033[1;34m \n ⬇️ Installing Nodejs ..."; sudo apt install nodejs npm -y;
	
	echo -n -e "\033[1;34m \n ➡️ Nodejs Version :- "; node -v;
	
	echo -n -e "\033[1;34m \n ➡️ NPM Version :- "; npm --version;
	
	echo -n -e "\033[1;34m \n ⬇️ Installing Python ..."; sudo apt install python3 -y;
	
	echo -n -e "\033[1;34m \n ➡️ Python Version :- "; python3 --version;
	
		echo -n -e "\033[1;34m \n ⬇️ Installing Python ..."; sudo apt install golang-go -y;
	
	echo -n -e "\033[1;34m \n ➡️ Go Version :- "; go version;
	
		echo -n -e "\033[1;34m \n ⬇️ Installing Hugo ..."; mkdir $HOME/src && cd $HOME/src && git clone https://github.com/gohugoio/hugo.git && cd hugo && go install --tags extended;

	echo -n -e "\033[1;34m \n ⬇️ Installing Yarn ..."; npm install --global yarn;
	
	echo -n -e "\033[1;34m \n ➡️ Yarn Version :- "; yarn --version;

echo -n -e "\033[1;34m \n ⬇️ Installing pnpm ..."; npm install -g pnpm;
	
	echo -n -e "\033[1;34m \n ➡️ Yarn Version :- "; yarn --version;

echo -n -e "\033[1;34m \n ⬇️ Installing v4l2loopback-dkms ..."; sudo apt install v4l2loopback-dkms -y;

echo -n -e "\033[1;34m \n ⬇️ Installing OBS ..."; sudo add-apt-repository ppa:obsproject/obs-studio && sudo apt update -y && sudo apt install obs-studio -y;

echo -n -e "\033[1;34m \n ⬇️ Installing Pycharm Community ..."; flatpak install flathub com.jetbrains.PyCharm-Community;

echo -n -e "\033[1;34m \n ⬇️ Installing telegram ..."; sudo add-apt-repository ppa:atareao/telegram && sudo apt update && sudo apt install telegram;
	
	echo -n -e "\033[1;34m \n ⬇️ Installing Zoom ..."; flatpak install flathub us.zoom.Zoom;
	
	echo -n -e "\033[1;34m \n ⬇️ Installing Obsidian ..."; flatpak install flathub md.obsidian.Obsidian;
	
echo -n -e "\033[1;34m \n 💻 Shutting Down Computer ..."; sudo shutdown -h -t 30;
	