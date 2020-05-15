#!/data/data/com.termux/files/usr/bin/bash -e
clear
apt-get install -y tar proot wget 
menu()
{
clear
setterm -foreground green
echo -e "\n\e[93m@MR. Linux\n"
echo -e "\n\e[5;91m   1- Instalar VPN"
echo -e "\e[5;96m   2- Instalar Metasploit-32bits"
echo -e "\e[5;92m   3- Salir"
echo -e -n "\e[5;92m \n mrlinux@localhost ~# "
read res
case $res in
"1")
clear
setterm -foreground red
figlet VPN
setterm -foreground cyan
echo " code by SUPERDYLANYT "
setterm -foreground red
echo " ESTA VPN SE CONECTA A LA RED TOR "
echo " TU TERMUX LAN SERA WLAN DESPUES DE LA INSTALACIÓN "
setterm -foreground green
echo " PULSA ENTER PARA CONFIRMAR LA INSTALACIÓN DE LA VPN "
setterm -foreground red
echo " Pulsa CTRL C para salir de aquí "
setterm -foreground green 
echo " ################################# "
read ENTER
echo " INSTALANDO VPN "
figlet INSTALANDO TOR
pkg install tor -y
echo " CONFIGURANDO PROXYS "
figlet INSTALANDO PROXY
pkg install proxychains-ng -y
clear
setterm -foreground green
figlet FINALIZADO
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
"2")
clear
pkg install curl -y
clear
curl -LO https://github.com/termux/termux-packages/files/3995119/metasploit_5.0.65-1_all.deb.gz
gunzip metasploit_5.0.65-1_all.deb.gz
dpkg -i metasploit_5.0.65-1_all.deb
apt -f install
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
exit
;;
esac
}
menu
