#!/bin/bash	

# Start
    clear
    chmod +x MYCREATIONS.sh
    chmod +x CANDICE.sh
    sudo dpkg --configure -a
    sudo apt autoremove
    apt --fix-broken install
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

function menu1
{
echo " ======================================"
echo "|+-+-+-+-+-+-+ WELCOME +-+-+-+-+-+-+-+ |"
echo " ======================================"
echo ""
echo -e "\e[1;31mCATEGORIES: \e[0m"
echo "[1] SETUP KALI"
echo "[2] INSTALL TOOLS"
echo "[3] OTHERS"
echo "[0] EXIT"
echo ""
echo "[c] CONTACT DEVELOPER"
echo "[u] UPDATE ZEDD"
echo "[a] ABOUT US"
}
menu1

echo ""
read -p "CHOOSE: " x

#OPTION1

option1='1'
option2='2'
option3='3'
optionu='u'
optionc='c'
optiona='a'

# COMMANDS

if [ "$x" == "$option1" ]; then      #OPTION 1
    clear
    chmod +x OPTION1.sh
    sudo bash OPTION1.sh
fi

if [ "$x" == "$option2" ]; then      #OPTION 2
    clear
    chmod +x OPTION2.sh
    sudo bash OPTION2.sh
fi

if [ "$x" == "$option3" ]; then      #OPTION 3
    clear
    chmod +x OPTION3.sh
    sudo bash OPTION3.sh
fi


if [ "$x" == "$optionc" ]; then   #OPTION CONTACT
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
    sudo bash ZEDD.sh
fi

if [ "$x" == "$optionu" ]; then   #OPTION UPDATE
    clear
    echo "SORRY UPDATE IS STILL WORK IN PROGRESS..."
    echo ""
    read -p "PRESS ANY KEY TO CONTINUE"
    clear
    sudo bash ZEDD.sh
fi

if [ "$x" == "$optiona" ]; then   #OPTION ABOUT
    clear
    echo -e "\e[1;31mABOUT US:\e[0m"
    echo ""
    echo "TOOL IS MADE FOR PEOPLE WHO ARE LAZY SETTING UP
THEIR TERMINALS."
    echo ""
    read -p "PRESS ANY KEY TO CONTINUE"
    clear
    sudo bash ZEDD.sh
fi