#!/data/data/com.termux/files/usr/bin/bash -e
clear
apt-get install -y tar proot wget 
menu()
{
clear
setterm -foreground green
echo -e "\n\e[93m@lab_tool\n"
echo -e "\n\e[5;91m   1- Instalar VPN"
echo -e "\e[5;96m   2- Instalar GENERADOR DE PAYLOAD Basico"
echo -e "\e[5;92m   3- Instalar nmap"
echo -e "\e[5;92m   4- Instalar Hydra"
echo -e "\e[5;92m   5- Instalar IPGeolocation"
echo -e -n "\e[5;92m \n >>> "
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
wget https://dylan14567.github.io/Laboratorio-SUPERDYLANYT/start-vpn.sh
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
wget https://dylan14567.github.io/Laboratorio-SUPERDYLANYT/GENERADORDEPAYLOAD.sh
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
pkg install nmap -y
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
pkg install hydra -y
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
"5")
clear
pkg update && pkg upgrade
pkg install fish git python
git clone https://github.com/maldevel/IPGeoLocation
pip install --upgrade pip
cd IPGeoLocation;ls
pip install -r requirements.txt
chmod 777 ipgeolocation.py
python ipgeolocation.py
ls
clear
python ipgeolocation.py -m
echo -e "\e[5;96m Regresar al menu s/n?"
read s
if [ "$s" = "s" ]; then 
menu
else
echo "saliendo.."
exit
fi
;;
"7")
exit
;;
esac
}
menu
