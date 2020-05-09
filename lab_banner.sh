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
rm lab_banner.sh

