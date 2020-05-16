#!/data/data/com.termux/files/usr/bin/bash -e
clear
apt-get install -y tar proot wget 
menu()
{
clear
setterm -foreground green
echo -e "\n\e[93m@lab_tool\n"
echo -e "\n\e[5;91m   1- Licencia"
echo -e "\e[5;92m   2- Instalar VPN"
echo -e "\e[5;96m   3- Instalar GENERADOR DE PAYLOAD Basico"
echo -e "\e[5;92m   4- Instalar Tool-X"
echo -e "\e[5;92m   5- Instalar Black Hydra"
echo -e "\e[5;92m   6- Instalar IPGeolocation"
echo -e "\e[5;92m   7- Instalar Metasploit_Framework"
echo -e "\e[5;92m   8- Instalar Lazymux"
echo -e "\e[5;92m   9- Instalar MR Linux"
echo -e "\e[5;92m   10- Instalar lab_banner"
echo -e "\e[5;92m   11- Salir"
echo -e -n "\e[5;92m \n >>> "
read res
case $res in
"1")
clear
setterm -foreground red
echo " Licencia "
setterm -foreground cyan
echo " [ code by SUPERDYLANYT ] "
echo " El creador del script, no se hace responsable "
echo " por el mal uso de este script, la unica intención "
echo " de este tool es para instalar herramientas en termux "
setterm -foreground yellow
echo " El conocimiento es libre "
setterm -foreground green
echo " voy a compartirlo "
echo " [ Buen Hacking Etico ] "
setterm -foreground white
echo " Bandera Blanca "
setterm -foreground green
echo " Escribe y si confirmas esta licensia "
setterm -foreground red 
echo " Escribe n si no confirmas esta licensia "
setterm -foreground green
echo " ###################### "
read ENTER
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
setterm -foreground red
figlet VPN
setterm -foreground cyan
echo " code by SUPERDYLANYT "
setterm -foreground red
echo " ESTA VPN SE CONECTA A LA RED TOR "
echo " TU TERMUX LAN SERA WLAN DESPUES DE LA INSTALACIÓN "
echo " Para poder ejecutar un comando de manera anonima ejecuta el comando. "
echo " proxychains4 "
echo " Ejemplo: "
echo " proxychains4 pkg install wget "
echo " para activar la VPN debes escribir ./start-vpn.sh "
echo " O solo escribe y ejecuta el comando tor o tor start "
echo " para ver el estatus de la VPN escribe "
echo " tor status "
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
chmod 777 start-vpn.sh
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
"3")
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
"4")
clear
pkg update && pkg upgrade
pkg install git -y
git clone https://github.com/rajkumardusad/Tool-X
ls
cd Tool-X
chmod 777 *;ls
cd --
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
pkg install hydra -y
pkg install git -y
git clone https://github.com/Gameye98/Black-Hydra
ls
cd Black-Hydra
ls
pkg install python
pkg install python2
chmod 777 blackhydra.py
cd --
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
"6")
clear
pkg update && pkg upgrade
pkg install fish git python
git clone https://github.com/maldevel/IPGeoLocation
pip install --upgrade pip
cd IPGeoLocation;ls
pip install -r requirements.txt
chmod 777 ipgeolocation.py
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
"7")
clear
pkg update && pkg upgrade
pkg install ruby -y
clear
pkg install unstable-repo
pkg install metasploit
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
"8")
clear
pkg update && pkg upgrade
pkg install python -y
pkg install python2 -y
pkg install git -y
git clone https://github.com/Gameye98/Lazymux
ls
cd Lazymux;ls
chmod 777 lazymux.py
ls
cd --
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
"9")
clear
pkg install wget -y
wget https://dylan14567.github.io/Laboratorio-SUPERDYLANYT/MR.-Linux.zip
unzip MR.-Linux.zip
rm MR.-Linux.zip
cd MR.-Linux;ls
chmod 777 menu.sh
ls
cd --
echo -e "\e[5;96m Regresar al menu s/n?"
read s
if [ "$s" = "s" ]; then 
menu
else
echo "saliendo.."
exit
fi
;;
"10")
clear
pkg install wget -y
wget https://dylan14567.github.io/Laboratorio-SUPERDYLANYT/lab_banner.sh
chmod 777 lab_banner.sh
ls
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
"11")
exit
;;
esac
}
menu
