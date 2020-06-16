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
echo " ======================================"
echo "|+-+-+-+-+-+-+ WELCOME +-+-+-+-+-+-+-+ |"
echo " ======================================"
echo ""
echo -e "\e[1;31mMENU: \e[0m"
echo "[1] SHOW IP ADDRESS"
echo "[2] SHOW WIRELESS NETWORK"
echo "[3] ARP SCAN"
echo "[4] OTHER CREATIONS (EXTRA)"
echo "[b] TO GO BACK"
echo ""
echo "[c] CONTACT DEVELOPER"
echo "[u] UPDATE ZEDD"
echo "[a] ABOUT US"
}
menu4
echo ""
read -p "CHOOSE: " x

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
    publicip="$(curl ifconfig.me)"
    localip="$(hostname -I)"
    echo ""
    ifconfig 
    echo ""
    read -p "PRESS ANY KEY TO CONTINUE"
    clear
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
    echo "If there is there is any issue please specify, and have a great day!"
    echo ""
    read -p "PRESS ANY KEY TO CONTINUE"
    clear
    sudo bash OPTION3.sh
fi

if [ "$x" == "$cu" ]; then   #OPTION UPDATE
    clear
    echo "SORRY UPDATE IS STILL WORK IN PROGRESS..."
    echo ""
    read -p "PRESS ANY KEY TO CONTINUE"
    clear
    sudo bash OPTION3.sh
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
