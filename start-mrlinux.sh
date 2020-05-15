#!/data/data/com.termux/files/usr/bin/bash -e
clear
apt-get install -y tar proot wget 
menu()
{
clear
setterm -foreground green
echo -e "\n\e[93m@MR. Linux\n"
echo -e -n "\e[5;92m \n >>>  "
read res
case $res in
"apt install vpn-tor")
clear
setterm -foreground red
figlet VPN
setterm -foreground cyan
echo " code by SUPERDYLANYT "
setterm -foregroune red
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
cd -- 
cd --
wget https://raw.githubusercontent.com/dylan14567/MR.-Linux/master/start-vpn.sh
clear
setterm -foreground green
figlet FINALIZADO
echo -e "\e[5;96m Regresar s/n?"
read s
if [ "$s" = "s" ]; then 
menu
else
echo "saliendo.."
exit
fi
;;
"exit")
exit
;;
esac
}
menu
