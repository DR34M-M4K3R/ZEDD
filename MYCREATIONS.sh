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

function menu5
{
echo " ======================================"
echo "|+-+-+-+-+-+-+ WELCOME +-+-+-+-+-+-+-+ |"
echo " ======================================"
echo ""
echo -e "\e[1;31mOTHER CREATIONS: \e[0m"
echo "[1] CANDICE"
echo "[2] LAZY SCRIPT"
echo "[3] Phisherprice"
echo "[b] TO GO BACK"
echo "MORE TOOLS SOON!"
echo ""
echo "[c] CONTACT DEVELOPER"
echo "[u] UPDATE ZEDD"
echo "[a] ABOUT US"
echo -e "\e[1;31mYOU CAN SUGGEST IDEAS TO THE DEVELOPER
BY CONTACTING THEM.\e[0m"
}
menu5

echo ""
echo "======================================="
echo ""
read -p "CHOOSE: " x

#OPTIONS

d1='1'
d2='2'
d3='3'
db='b'
dc='c'
da='a'
du='u'

if [ "$x" == "$d1" ]; then   #OPTION 1
    clear
    echo "Please wait...."
    sudo bash CANDICE.sh
fi 

if [ "$x" == "$d2" ]; then   #OPTION 2
    clear
    echo "Please wait...."
    cd
    git clone https://github.com/arismelachroinos/lscript.git
    cd lscript
    chmod +x install.sh
    ./install.sh
fi 

if [ "$x" == "$d3" ]; then   #OPTION 3
    clear
    echo "Please wait...."
    git clone https://github.com/SirCryptic/phisherprice
    cd phisherprice
    sudo bash install.sh
    sudo phisherprice.sh
fi 

if [ "$x" == "$db" ]; then   #OPTION back
    clear
    sudo bash OPTION3.sh
fi

if [ "$x" == "$dc" ]; then      #OPTION CONTACT
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
    sudo bash MYCREATIONS.sh
fi

if [ "$x" == "$du" ]; then   #OPTION UPDATE
    clear
    echo "SORRY UPDATE IS STILL WORK IN PROGRESS..."
    echo ""
    read -p "PRESS ANY KEY TO CONTINUE"
    clear
    sudo bash MYCREATIONS.sh
fi

if [ "$x" == "$da" ]; then   #OPTION ABOUT
    clear
    echo -e "\e[1;31mABOUT US:\e[0m"
    echo ""
    echo "TOOL IS MADE FOR PEOPLE WHO ARE LAZY SETTING UP
THEIR TERMINALS."
    echo ""
    read -p "PRESS ANY KEY TO CONTINUE"
    clear
    sudo bash MYCREATIONS.sh
fi
