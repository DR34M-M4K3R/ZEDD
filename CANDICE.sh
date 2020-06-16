#!/bin/bash

# COMMAND LINE *START*
    clear
    sudo dpkg --configure -a
    apt --fix-broken install
    clear

# TOOL BANNER
function banner
{
echo -e "\e[1;31m
  ░█████╗░░█████╗░███╗░░██╗██████╗░██╗░█████╗░███████╗
   ██╔══██╗██╔══██╗████╗░██║██╔══██╗██║██╔══██╗██╔════╝
   ██║░░╚═╝███████║██╔██╗██║██║░░██║██║██║░░╚═╝█████╗░░
   ██║░░██╗██╔══██║██║╚████║██║░░██║██║██║░░██╗██╔══╝░░
   ╚█████╔╝██║░░██║██║░╚███║██████╔╝██║╚█████╔╝███████╗
   ░╚════╝░╚═╝░░╚═╝╚═╝░░╚══╝╚═════╝░╚═╝░╚════╝░╚══════╝
              CREATED BY MZZGAMER || VERSION: BETA \e[0m"
}
banner
echo ""
echo ""
echo -e "\e[1;31m CATEGORIES:\e[0m"
echo ""
echo "  1) Th3inspector (IP GEO-LOCATOR)"
echo "  2) PENTBOX (HONEYPOT TOOL)"
echo "  3) AIRCRACK-NG (WIFI HACKING TOOL)"
echo "  4) WIFITE (WIFI HACKING TOOL)"
echo "  5) EZ-SETUP (AUTOMATIC KALI SETUP)"
echo "  6) LAZY SCRIPT (SKID TOOL XD)"
echo "  7) KATOOLIN (REPOSITORY INSTALLER)"
echo "  8) METASPLOIT (PENTESTING FRAMEWORK)"
echo "  9) SOCIAL ENGINEERING TOOL KIT (PHISHING TOOL ETC.)"
echo "|-------------------------------------------------------|"
echo ""
echo -e "\e[1;31m  MORE OPTIONS:\e[0m"
echo "  10) GO BACK TO ZEDD"
echo ""
echo "|-------------------------------------------------------|"
echo ""
echo "  a) ABOUT"
echo "  c) CONTACT DEVELOPER"
echo "  i) SHOW IP AND WIRELESS NETWORK"
echo "  u) UPDATE TERMINAL"
echo ""
read -p "CHOOSE: " x

# OPTIONS
option1='1'
option2='2'
option3='3'
option4='4'
option5='5'
option6='6'
option7='7'
option8='8'
option9='9'
optionc='c'
optioni='i'
option10='10'
optionb='b'
optiona='a'
optionu='u'

# COMMANDS

if [ "$x" == "$option1" ]; then   #OPTION1
    clear
    echo "Installing and running please wait...."
    git clone https://github.com/Moham3dRiahi/Th3inspector.git
    cd Th3inspector
    clear
    chmod +x install.sh && ./install.sh
fi

if [ "$x" == "$option2" ]; then   #OPTION2
    clear
    echo "Installing and running please wait...."
    git clone https://github.com/technicaldada/pentbox
    cd pentbox
    tar -zxvf pentbox.tar.gz5
    cd pentbox
    sudo apt-get install ruby-full
    ./pentbox-1.8
fi

if [ "$x" == "$option3" ]; then   #OPTION3
    clear
    echo "must have aircrack-ng"
    echo "running please wait...."
    aircrack-ng
fi

if [ "$x" == "$option4" ]; then   #OPTION4
    clear
    echo "must have wifite and requirements"
    echo "running please wait...."
    wifite
fi

if [ "$x" == "$option5" ]; then   #OPTION5
    clear
    echo "Installing and running please wait...."
    git clone https://github.com/mZzgamer/EASY-SETUP-KALI.git
    cd EASY-SETUP-KALI/
    chmod +x EZ-SETUP.sh
    clear
    sudo bash EZ-SETUP.sh
fi

if [ "$x" == "$option6" ]; then   #OPTION6
    clear
    echo "Installing and running please wait...."
    cd
    git clone https://github.com/arismelachroinos/lscript.git
    cd lscript
    chmod +x install.sh
    ./install.sh
fi

if [ "$x" == "$option7" ]; then   #OPTION7
    clear
    echo "Installing and running please wait...."
    git clone https://github.com/LionSec/katoolin.git && cp katoolin/katoolin.py /usr/bin/katoolin
    chmod +x /usr/bin/katoolin
    sudo katoolin
fi

if [ "$x" == "$option8" ]; then   #OPTION8
    clear
    echo "must have metasploit and requirements"
    echo "running please wait...."
    msfconsole
fi

if [ "$x" == "$option9" ]; then   #OPTION9
    clear
    echo "Installing and running please wait...."
    git clone https://github.com/trustedsec/social-engineer-toolkit/ setoolkit/
    cd setoolkit
    pip3 install -r requirements.txt
    clear
    python setup.py
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
    sudo bash CANDICE.sh
fi

if [ "$x" == "$option9" ]; then    #OPTION 9
    clear
    publicip="$(curl ifconfig.me)"
    localip="$(hostname -I)"
    echo ""
    ifconfig 
    echo ""
    iwconfig
    echo ""
    read -p "PRESS ANY KEY TO CONTINUE"
    clear
    sudo bash CANDICE.sh
fi

if [ "$x" == "$option10" ]; then   #OPTION10
    clear
    sudo bash ZEDD.sh
fi

if [ "$x" == "$optiona" ]; then   #OPTIONa
    clear
    echo "ABOUT:"
    echo ""
    echo "TOOL IS DESIGNED TO AVOID PEOPLE GOING TO MULTIPLE WEBSITES JUST TO INSTALL TOOLS,
SO I HAVE COMPILED 10 TOOLS THAT I PERSONALLY BELIEVE THAT ARE MOSTLY USED BY PEOPLE. I HOPE YOU 
ENJOY, AND THANK YOU FOR INSTALLING OUR TOOL."
    echo ""
    read -p "PRESS ANY KEY TO CONTINUE"
    clear
    sudo bash CANDICE.sh
fi

if [ "$x" == "$optionb" ]; then   #OPTIONb
    echo "Please wait...."
    sudo bash CANDICE.sh
fi

if [ "$x" == "$optionu" ]; then   #OPTIONu
    clear
    sudo apt-get upgrade && sudo apt-get update
    clear
    sudo bash CANDICE.sh
fi

if [ "$x" == "$optioni" ]; then    #OPTIONi
    clear
    publicip="$(curl ifconfig.me)"
    localip="$(hostname -I)"
    echo ""
    ifconfig 
    echo ""
    iwconfig
    echo ""
    read -p "PRESS ANY KEY TO CONTINUE"
    clear
    sudo bash CANDICE.sh
fi

# DONE
