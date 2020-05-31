#!/bin/bash
clear
apt-get install -y tar proot wget 
setterm -foreground green
menu()
{
clear
echo -e "\n\e[93m@lab_banner\n"
echo -e "\n\e[5;91m   1- Instalar Banner"
echo -e "\e[5;96m   2- Instalar Root"
echo -e "\e[5;92m   3- Instalar Arch Linux"
echo -e "\e[5;92m   4- Salir"
echo -e -n "\e[5;92m \n >>>  "
read res
case $res in
"1")
clear
apt update && apt upgrade -y
pkg install wget -y
pkg install vim -y
pkg install neofetch -y
cd ../usr/etc;ls
rm motd
rm bash.bashrc
wget https://dylan14567.github.io/Laboratorio-SUPERDYLANYT/Bash/bash.bashrc
cd --
clear
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
pkg update && pkg upgrade
clear
pkg install root-repo -y
pkg install figlet -y
pkg install unstable-repo -y
clear
setterm -foreground green
pkg install proot -y
pkg install vim -y
pkg install wget -y
su
pkg install tsu -y
clear
wget https://dylan14567.github.io/Laboratorio-SUPERDYLANYT/Bash/start-root.sh
clear
chmod 777 start-root.sh
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
"3")
clear
apt update && apt upgrade
clear
setterm -foreground cyan
figlet Arch Linux
echo " Pulsa ENTER para confirmar la instalación "
echo " Pulsa CTRL C para salir de aquí "
read ENTER
setterm -foreground cyan
clear
echo " Instalando Arch Linux "
sleep 2.0
apt update -y
setterm -foreground cyan
pkg install wget openssl-tool proot tar -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Arch/armhf/arch.sh && bash arch.sh
setterm -foreground cyan
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
exit
;;
esac
}
menu
