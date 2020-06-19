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

function menu3
{
echo ""
echo " [1] AUTO INSTALL ALL TOOLS"
echo " [2] MANUALL INSTALL TOOLS (370 TOOLS)"
echo " [b] TO GO BACK"
echo ""
echo " [c] CONTACT DEVELOPERS"
echo " [u] UPDATE ZEDD"
echo " [a] ABOUT US"
}
menu3

echo ""
read -p " CHOOSE: " x

#OPTIONS

b1='1'
b2='2'
bb='b'
bc='c'
bu='u'
ba='a'

if [ "$x" == "$b1" ]; then      #OPTION 1
    clear
    echo -e "\e[1;31m NOTE: THIS WILL TAKE A WHILE.... \e[0m"
    echo "installing please wait...."
    sudo dpkg --configure -a
    sudo apt install kali-linux-everything
    echo ""
    echo "Process complete..."
    read -p "PRESS ANY KEY TO CONTINUE"
    clear
    sudo bash OPTION2.sh
fi

if [ "$x" == "$b2" ]; then      #OPTION 2
    clear
    git clone https://github.com/rajkumardusad/onex.git
    chmod +x onex/install
    ./onex/install
    echo ""
    echo "To run please type onex start"
    echo ""
fi

if [ "$x" == "$bb" ]; then      #OPTION back
    clear
    sudo bash ZEDD.sh
fi

if [ "$x" == "$bc" ]; then      #OPTION CONTACT
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
    sudo bash OPTION2.sh
fi


if [ "$x" == "$optionu" ]; then   #OPTION UPDATE
    clear
    echo "READY TO UPTATE...THERE IS AN EMERGENCY RECUPERATION FILES SYSTEM. CONTACT US FOR MORE."
    cd ..
    mv ./ZEDD ./ZEDD.SAV
    git clone https://github.com/mZzgamer/ZEDD.git
    echo "UPDATE SUCCESSFULLY"
    rm -rf ./ZEDD.SAV   
    read -p "PRESS ENTER TO CONTINUE"
    clear
    sudo bash ZEDD.sh
fi

if [ "$x" == "$ba" ]; then   #OPTION ABOUT
    clear
    echo -e "\e[1;31mABOUT US:\e[0m"
    echo ""
    echo "TOOL IS MADE FOR PEOPLE WHO ARE LAZY SETTING UP
THEIR TERMINALS."
    echo ""
    read -p "PRESS ANY KEY TO CONTINUE"
    clear
    sudo bash OPTION2.sh
fi
