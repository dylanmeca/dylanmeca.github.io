#!/bin/bash
pkg update && pkg upgrade
clear
apt-get install -y tar proot wget 
menu()
{
setterm -foreground green
clear
echo -e "\n\e[93m@root\n"
echo -e "\n\e[5;91m   1- Instalar kali-linux"
echo -e "\e[5;96m   2- instalar servidor-web-termux"
echo -e "\e[5;92m   3- instalar server_labdylanyt"
echo -e "\e[5;92m   4- instalar Kali-NetHunter"
echo -e "\e[5;92m   5- salir"
echo -e -n "\e[5;92m \n >>>  "
read res
case $res in
"1")
clear
cd --
pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Kali/kali.sh && bash kali.sh
cd server_labdylanyt
echo -e "\n\e[5;96m Regresar al menu s/n?"
read s
if [ "$s" = "s" ]; then 
menu
else
echo "saliendo.."
exit
fi
;;
"2")
clear
pkg install git
cd --
git clone https://github.com/dylan14567/Servidor-WEB-Termux
cd Servidor-WEB-Termux;ls
chmod 777 install.sh
sh install.sh
cd server_labdylanyt
echo -e "\e[5;96m Regresar al menu s/n?"
read s
if [ "$s" = "s" ]; then 
menu
else
echo "saliendo.."
exit
fi
;;
"3")
clear
sh sistema.sh
clear
echo -e "\e[5;96m Regresar al menu s/n?"
read s
if [ "$s" = "s" ]; then 
menu
else
echo "saliendo.."
exit
fi
;;
"4")
clear
cd --
pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Nethunter/nethunter.sh && bash nethunter.sh
cd server_labdylanyt
echo -e "\e[5;96m Regresar al menu s/n?"
read s
if [ "$s" = "s" ]; then 
menu
else
echo "saliendo.."
exit
fi
;;
"5")
exit
;;
esac
}
menu

