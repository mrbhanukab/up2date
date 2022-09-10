clear
cat logo.txt
echo ""
echo -n -e "\033[1;31m 💻 First we need Administrative privileges. \033[1;0m \n Enter "; sudo echo "" > /dev/null; 

# Broken Pacakges
clear
cat logo.txt
echo ""
echo -n -e "\033[1;32m \n 🧑‍🔧: First I am Fixing Broken Install Packages. \033[1;0m \n"
sudo apt-get --fix-broken install -y

# Select Installs
clear
cat logo.txt
echo ""
echo -n -e "\033[1;32m \n 🧑‍🔧: By default I will install Ubuntu Restricted Extras, & Upgrade the System. Select any other Applications You Want to install from the below list\033[1;0m
\n\n 1. Gnome Tweaks
\n 2. neofetch
\n 3. Preload
\n 3. Preload
\n 3. Preload

 "
