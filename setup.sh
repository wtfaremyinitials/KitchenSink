#!/bin/bash/

JARNAME="SPONGE_001.jar"
XMX="2G"
XMS="2G"
ADDARGS=""


#Fancy Menus
tput clear
tput cup 3 15
tput setaf 2
echo "SpongeAPI Automated Installer"
tput sgr0
tput cup 5 17
tput rev
echo "Select Installer Mode"
tput cup 7 15
echo "1. Automated Install."
tput cup 8 15
echo "2. Manual Install."
tput bold
tput cup 12 15
read -p "Enter your choice [1-2] " choice

tput clear
tput sgr0
tput rc
wget https://raw.githubusercontent.com/wtfaremyinitials/KitchenSink/ServerShell/auto.sh
#Boolean shit needs to be fixed, fast....

if $choice == "1" ; then /bin/bash/ auto.sh
	
fi

if $choice == "2" ; then 
	touch man 
fi

#The message from hell.
echo "This should never show.  If it does, you're reading this and not running it."