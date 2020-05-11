#!/data/data/com.termux/files/usr/bin/bash -e
clear
apt-get install -y tar proot wget 
menu()
{
clear
echo -e "\n\e[93m@lab_tool\n"
echo -e "\n\e[5;91m   1- Instalar Metasploit-64bits"
echo -e "\e[5;96m   2- instalar Metasploit-32bits"
echo -e "\e[5;92m   3- Salir"
echo -e -n "\e[5;92m \n >>>  "
read res
case $res in
"1")
clear
pkg update && pkg upgrade
pkg install ruby -y
pkg install curl -y
pkg install unstable-repo
pkg install metasploit
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
pkg install ruby -y
pkg install curl -y
curl -LO https://github.com/termux/termux-packages/files/3995119/metasploit_5.0.65-1_all.deb.gz
gunzip metasploit_5.0.65-1_all.deb.gz
dpkg -i metasploit_5.0.65-1_all.deb
apt -f install
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
