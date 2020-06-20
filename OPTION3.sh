#!/bin/bash	

# Start
    clear

# COMMANDS
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   echo "Your not rooted, please root your Terminal." 
   exit 1
fi

# BANNER DESIGN
function banner
{
    echo ""
    echo -e "\e[1;31m
  ███████╗███████╗██████╗░██████╗░
  ╚════██║██╔════╝██╔══██╗██╔══██╗
  ░░███╔═╝█████╗░░██║░░██║██║░░██║
  ██╔══╝░░██╔══╝░░██║░░██║██║░░██║
  ███████╗███████╗██████╔╝██████╔╝
        CREATED BY MZZGAMER || V.1.0 \e[0m"
}
banner

function menu4
{
echo ""
echo " [1] SHOW IP ADDRESS"
echo " [2] SHOW WIRELESS NETWORK"
echo " [3] ARP SCAN"
echo " [4] OTHER CREATIONS (EXTRA)"
echo " [b] TO GO BACK"
echo ""
echo " [c] CONTACT DEVELOPER"
echo " [u] UPDATE ZEDD"
echo " [a] ABOUT US"
}
menu4

echo ""
read -p " CHOOSE: " x

#OPTIONS

c1='1'
c2='2'
c3='3'
c4='4'
cb='b'
cc='c'
cu='u'
ca='a'


if [ "$x" == "$c1" ]; then    #OPTION 1
    clear
    curdir="$(pwd)"
    echo "XCLIP INSTALLATION..."
    cd
    clear
    echo ""
    apt-get install xclip
    publicip="$(curl ifconfig.me)"
    localip="$(hostname -I)"
    clear
    echo "----YOUR PUBLIC IP IS $publicip----" 
    echo "----YOUR LOCAL IP IS $localip----"
    echo "PUBLIC IP: $publicip -- LOCAL IP: $localip" | xclip -selection clipboard
    echo ""
    echo "THESE INFOS ARE COPIED TO CLIPBOARD."
    echo ""
    echo "^RESTART ZEDD IF YOU HAVE AN ERROR HERE"
    echo ""
    read -p "PRESS ENTER TO CONTINUE"
    clear
    cd $curdir
    sudo bash OPTION3.sh
fi


if [ "$x" == "$c2" ]; then   #OPTION 2
    clear
    echo ""
    iwconfig
    echo ""
    read -p "PRESS ANY KEY TO CONTINUE"
    clear
    sudo bash OPTION3.sh
fi


if [ "$x" == "$c3" ]; then   #OPTION 3
    clear
    echo "scanning please wait...."
    sudo dnf install arp-scan
    clear
    sudo arp-scan --interface=wlan0 --localnet
    echo ""
    read -p "PRESS ANY KEY TO CONTINUE"
    clear
    sudo bash OPTION3.sh
fi

if [ "$x" == "$c4" ]; then   #OPTION 4
    clear
    sudo bash MYCREATIONS.sh
fi

if [ "$x" == "$cb" ]; then   #OPTION back
    clear
    sudo bash ZEDD.sh
fi

if [ "$x" == "$cc" ]; then      #OPTION CONTACT
    clear
    echo ""
    echo "CONTACT DETAILS: "
    echo ""
    echo "DISCORD: mZzgamer#8652"
    echo "TWITTER: @mZzgamerDEV"
    echo ""
    echo "You can also join our Discord server: https://discord.gg/ZjVjr6j "
    echo "If there is there is any issue please specify, and have a great day!"
    echo ""
    read -p "PRESS ANY KEY TO CONTINUE"
    clear
    sudo bash OPTION3.sh
fi

if [ "$x" == "$cu" ]; then   #OPTION UPDATE
    clear
    echo "READY TO UPTATE...THERE IS AN EMERGENCY RECUPERATION FILES SYSTEM. CONTACT US FOR MORE."
    cd ..
    mv ./ZEDD ./ZEDD.SAV
    git clone https://github.com/mZzgamer/ZEDD.git
    echo "UPDATE SUCCESSFULLY"
    rm -rf ./ZEDD.SAV   
    read -p "PRESS ENTER TO CONTINUE"
    clear
    git clone https://github.com/mZzgamer/ZEDD
    cd ZEDD/
    chmod +x ZEDD.sh
    sudo bash ZEDD.sh
fi

if [ "$x" == "$ca" ]; then   #OPTION ABOUT
    clear
    echo -e "\e[1;31mABOUT US:\e[0m"
    echo ""
    echo "TOOL IS MADE FOR PEOPLE WHO ARE LAZY SETTING UP
THEIR TERMINALS."
    echo ""
    read -p "PRESS ANY KEY TO CONTINUE"
    clear
    sudo bash OPTION3.sh
fi
