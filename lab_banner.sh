#!/bin/bash
#paquetes 
apt update && apt upgrade -y
pkg install wget -y
pkg install vim -y
pkg install neofetch -y
#comandos
cd ../usr/etc;ls
rm motd
rm bash.bashrc
wget https://dylan14567.github.io/Laboratorio-SUPERDYLANYT/bash.bashrc
cd --
clear
#root
pkg update && pkg upgrade
clear
pkg install root-repo -y
pkg install figlet -y
clear
setterm -foreground green
echo " Pulsa ENTER para confirmar la instalación de root "
echo " Usa CTRL C para salir de aquí "
read ENTER
pkg install proot -y
pkg install vim -y
pkg install wget -y
su
pkg install tsu -y
clear
wget https://dylan14567.github.io/Laboratorio-SUPERDYLANYT/start-root.sh
clear
chmod 777 start-root.sh
rm lab_banner.sh
