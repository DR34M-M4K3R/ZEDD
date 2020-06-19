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

function menu2
{
echo ""
echo " [1] AUTO SETUP KALI"
echo " [2] INSTALL ALL REPOSITORIES"
echo " [3] UPDATE/UPGRADE TERMINAL"
echo " [4] ONE CLICK SETUP ALL"
echo " [b] TO GO BACK"
echo ""
echo " [c] CONTACT DEVELOPERS"
echo " [u] UPDATE ZEDD"
echo " [a] ABOUT US"
}
menu2

echo ""
read -p " CHOOSE: " x

#OPTIONS

a1='1'
a2='2'
a3='3'
a4='4'
ab='b'
ac='c'
au='u'
aa='a'

if [ "$x" == "$a1" ]; then       #OPTION 1
clear
echo "installing please wait...."
echo "installing git...."
sudo dpkg --configure -a
sudo apt-get install git
clear
echo "Running basic commands...."
sudo dpkg --configure -a
sudo apt-get clean
sudo dpkg --configure -a
sudo apt-get update
sudo dpkg --configure -a
sudo apt-get upgrade -y
sudo dpkg --configure -a
sudo apt-get dist-upgrade -y
sudo dpkg --configure -a
sudo apt-get remove
sudo dpkg --configure -a
clear
echo "installing gnome tweaks...."
sudo dpkg --configure -a
sudo apt install gnome-tweaks
clear
echo "installing filezilla...."
sudo dpkg --configure -a
sudo apt install filezilla filezilla-common -y
clear
echo "installing tor...."
sudo dpkg --configure -a
sudo apt install tor
sudo dpkg --configure -a
sudo apt-get install torbrowser-launcher
clear
echo "installing software-center...."
sudo dpkg --configure -a
sudo apt install software-center
clear
echo "installing gdebi...."
sudo dpkg --configure -a
sudo apt install gdebi
echo ""
echo "Process complete..."
read -p "PRESS ANY KEY TO CONTINUE"
clear
sudo bash OPTION1.sh
fi

if [ "$x" == "$a2" ]; then       #OPTION 2
        clear
	echo "installing please wait...."
	sudo dpkg --configure -a
	sudo apt install gnupg ca-certificates
	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 		3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
	echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | sudo tee /etc/apt sources.list.d/mono-official-stable.list

	sudo apt-get install htop -y

	sudo apt-get update && apt-get upgrade -y

	sudo dpkg --add-architecture i386 && apt-get update &&> apt-get install wine32 -y
	sudo apt-get install libcurl4-openssl-dev -y
	sudo apt-get install libssl-dev -y
	make
	sudo make install
	cd
	git clone https://github.com/ZerBea/hcxtools.git
	cd hcxtools
	make
	sudo make install
	echo "cd"
	sudo dpkg --configure -a
	sudo apt-get install python-dev -y
	sudo dpkg --configure -a
	sudo apt-get install libssl-dev libz-dev libpcap-dev -y
	sudo dpkg --configure -a
	sudo apt-get install winetricks -y
	sudo dpkg --configure -a
	sudo apt-get install openvpn -y
	sudo dpkg --configure -a
	sudo apt-get install tor -y
	sudo dpkg --configure -a
	sudo apt install torbrowser-launcher -y
	sudo dpkg --configure -a
	sudo apt-get update && apt-get upgrade -y
	sudo dpkg --configure -a
	sudo apt-get cowsay -y
	sudo dpkg --configure -a
	sudo apt-get fortune -y
	sudo dpkg --configure -a
	sudo apt-get install libpcap-dev -y
	sudo dpkg --configure -a
	sudo apt-get install python-dev -y
	sudo dpkg --configure -a
	sudo apt-get install libpq-dev -y
	sudo dpkg --configure -a
	curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py -y
	sudo dpkg --configure -a
	sudo python get-pip.py -y
	sudo dpkg --configure -a
	rm get-pip.py
	sudo dpkg --configure -a
	pip install psycopg2 -y
	sudo dpkg --configure -a
	wget https://github.com/busyloop/lolcat/archive/master.zip
	unzip master.zip
	cd lolcat-master/bin
	gem install lolcat
	sudo dpkg --configure -a
	sudo apt-get update && apt-get upgrade -y
        echo ""
        echo "Process complete..."
        read -p "PRESS ANY KEY TO CONTINUE"
        clear
        sudo bash OPTION1.sh
fi


if [ "$x" == "$a3" ]; then       #OPTION 3
clear
echo "updating and upgrading please wait...."
sudo dpkg --configure -a
sudo apt-get update
sudo apt-get upgrade
echo ""
echo "Process complete..."
read -p "PRESS ANY KEY TO CONTINUE"
clear
sudo bash OPTION1.sh
fi

if [ "$x" == "$a4" ]; then    #OPTION 4
    clear
    echo "installing please wait...."
    echo "installing git...."
    sudo dpkg --configure -a
    sudo apt-get install git
    clear
    echo "Running basic commands...."
    sudo dpkg --configure -a
    sudo apt-get clean      
    sudo dpkg --configure -a
    sudo apt-get update
    sudo dpkg --configure -a
    sudo apt-get upgrade -y
    sudo dpkg --configure -a
    sudo apt-get dist-upgrade -y
    sudo dpkg --configure -a
    sudo apt-get remove
    clear
    echo "installing gnome-tweaks...."
    sudo dpkg --configure -a
    sudo apt install gnome-tweaks
    clear
    echo "installing filezilla...."
    sudo dpkg --configure -a
    sudo apt install filezilla filezilla-common -y
    clear
    echo "installing tor...." 
    sudo dpkg --configure -a
    sudo apt install tor
    sudo dpkg --configure -a
    sudo apt-get install torbrowser-launcher
    clear
    echo "installing software center...."
    sudo dpkg --configure -a
    sudo apt install software-center
    clear
    echo "installing gdebi...."
    sudo dpkg --configure -a
    sudo apt install gdebi
    clear
    echo "Updating and upgrading...."
    sudo dpkg --configure -a
    sudo apt-get update
    sudo dpkg --configure -a
    sudo apt-get upgrade
    clear
    echo "installing gnupg"
    sudo dpkg --configure -a
    sudo apt install gnupg ca-certificates
    clear
    echo "installing repositories...."
    sudo dpkg --configure -a
    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 		3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
    echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | sudo tee /etc/apt sources.list.d/mono-official-stable.list

    sudo apt-get install htop -y
    sudo dpkg --configure -a

    sudo apt-get update && apt-get upgrade -y
    sudo dpkg --configure -a

    sudo dpkg --add-architecture i386 && apt-get update &&> apt-get install wine32 -y
    sudo dpkg --configure -a
    sudo apt-get install libcurl4-openssl-dev -y
    sudo dpkg --configure -a
    sudo apt-get install libssl-dev -y
    sudo dpkg --configure -a
    make
    sudo make install
    cd
    git clone https://github.com/ZerBea/hcxtools.git
    cd hcxtools
    make
    sudo make install
    echo "cd"
    sudo dpkg --configure -a
    sudo apt-get install python-dev -y
    sudo dpkg --configure -a
    sudo apt-get install libssl-dev libz-dev libpcap-dev -y
    sudo dpkg --configure -a
    sudo apt-get install winetricks -y
    sudo dpkg --configure -a
    sudo apt-get install openvpn -y
    sudo dpkg --configure -a
    sudo apt-get install tor -y
    sudo dpkg --configure -a
    sudo apt install torbrowser-launcher -y
    sudo dpkg --configure -a
    sudo apt-get update && apt-get upgrade -y
    sudo dpkg --configure -a
    sudo apt-get cowsay -y
    sudo dpkg --configure -a
    sudo apt-get fortune -y
    sudo dpkg --configure -a
    sudo apt-get install libpcap-dev -y
    sudo dpkg --configure -a
    sudo apt-get install python-dev -y
    sudo dpkg --configure -a
    sudo apt-get install libpq-dev -y
    sudo dpkg --configure -a
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py -y
    sudo dpkg --configure -a
    sudo python get-pip.py -y
    sudo dpkg --configure -a
    rm get-pip.py
    sudo dpkg --configure -a
    pip install psycopg2 -y
    sudo dpkg --configure -a
    wget https://github.com/busyloop/lolcat/archive/master.zip
    sudo dpkg --configure -a
    unzip master.zip
    sudo dpkg --configure -a
    cd lolcat-master/bin
    sudo dpkg --configure -a
    gem install lolcat
    sudo dpkg --configure -a
    sudo apt-get update && apt-get upgrade -y
    echo ""
    echo "Process complete..."
    read -p "PRESS ANY KEY TO CONTINUE"
    clear
    sudo bash OPTION1.sh
fi

if [ "$x" == "$ab" ]; then   #OPTION back
    clear
    sudo bash ZEDD.sh
fi

if [ "$x" == "$ac" ]; then   #OPTION CONTACT
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
    sudo bash OPTION1.sh
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
fi

if [ "$x" == "$aa" ]; then   #OPTION ABOUT
    clear
    echo -e "\e[1;31mABOUT US:\e[0m"
    echo ""
    echo "TOOL IS MADE FOR PEOPLE WHO ARE LAZY SETTING UP
THEIR TERMINALS."
    echo ""
    read -p "PRESS ANY KEY TO CONTINUE"
    clear
    sudo bash OPTION1.sh
fi
