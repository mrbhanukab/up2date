echo "The 'newos' Programme 👾" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
	echo -e "\n"
	
echo -e "\033[1;31mPlease wait a few minutes, the time is depends on your internet connection & pc performance. \033[1;0m⌛ \ n" 

	echo -n -e "\033[1;32m \n 🧑‍🔧 Fixing Broken Install ..."; sudo apt-get --fix-broken install -y > /dev/null;
	
    echo -n -e "\033[1;32m \n 💻 Updating ..."; sudo apt-get update -y > /dev/null;
    
	echo -n -e "\033[1;32m \n 💻 Upgradng ..."; sudo apt-get upgrade -y > /dev/null;
	
	echo -n -e "\033[1;32m \n ⬇️ Installing Ubuntu Restricted Extras ..."; sudo apt-get install -y ubuntu-restricted-extras > /dev/null;
	
	echo -n -e "\033[1;32m \n ⬇️ Installing Gnome Tweaks ..."; sudo apt-get install -y gnome-tweaks > /dev/null;
	
	echo -n -e "\033[1;32m \n ⬇️ Installing neofetch ..."; sudo apt-get install -y neofetch > /dev/null;
	
	echo -n -e "\033[1;32m \n ⬇️ Installing flatpak ..."; sudo apt-get install -y flatpak > /dev/null;
	
	echo -n -e "\033[1;32m \n ⬇️ Installing htop ..."; sudo apt-get install -y htop > /dev/null;
	
	echo -n -e "\033[1;32m \n ⬇️ Installing vim ..."; sudo apt-get install -y vim > /dev/null;
	
	echo -n -e "\033[1;32m \n ⬇️ Installing wget ..."; sudo apt-get install -y wget > /dev/null;
	
	echo -n -e "\033[1;34m \n 💻 Adding repository ppa:fish-shell/release-3 ..."; sudo apt-add-repository ppa:fish-shell/release-3 > /dev/null;
	
	echo -n -e "\033[1;32m \n ⬇️ Installing fish..."; sudo apt-get install fish > /dev/null;
	
	echo -n -e "\033[1;34m \n 💻 Making fish is default ..."; chsh -s /usr/bin/fish > /dev/null;
	
	echo -n -e "\033[1;34m \n 💻 Making fish is default ...";
	
	echo -n -e "\033[1;34m \n ⬇️ Installing VSCode..."; chsh -s /usr/bin/fish > /dev/null && sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" && sudo apt-get update && sudo apt install code;
	
	echo -n -e "\033[1;34m \n ⬇️ Installing Nodejs ..."; sudo apt install nodejs npm;
	
	echo -n -e "\033[1;34m \n ➡️ Nodejs Version :- "; node -v;
	
	echo -n -e "\033[1;34m \n ➡️ NPM Version :- "; npm --version;
	
	echo -n -e "\033[1;34m \n ⬇️ Installing Python ..."; sudo apt install python3;
	
	echo -n -e "\033[1;34m \n ➡️ Python Version :- "; python3 --version;
	
		echo -n -e "\033[1;34m \n ⬇️ Installing Python ..."; sudo apt install golang-go;
	
	echo -n -e "\033[1;34m \n ➡️ Go Version :- "; go version;
	
		echo -n -e "\033[1;34m \n ⬇️ Installing Hugo ..."; mkdir $HOME/src && cd $HOME/src && git clone https://github.com/gohugoio/hugo.git && cd hugo && go install --tags extended;

	echo -n -e "\033[1;34m \n ⬇️ Installing Yarn ..."; npm install --global yarn;
	
	echo -n -e "\033[1;34m \n ➡️ Yarn Version :- "; yarn --version;

echo -n -e "\033[1;34m \n ⬇️ Installing pnpm ..."; npm install -g pnpm;
	
	echo -n -e "\033[1;34m \n ➡️ Yarn Version :- "; yarn --version;

echo -n -e "\033[1;34m \n ⬇️ Installing v4l2loopback-dkms ..."; sudo apt install v4l2loopback-dkms;

echo -n -e "\033[1;34m \n ⬇️ Installing OBS ..."; sudo add-apt-repository ppa:obsproject/obs-studio && sudo apt update && sudo apt install obs-studio;

echo -n -e "\033[1;34m \n ⬇️ Installing Pycharm Community ..."; sudo snap install pycharm-community --classic;
	
	echo -n -e "\033[1;34m \n 💻 Shutting Down Computer ..."; sudo shutdown -h -t 30;
	