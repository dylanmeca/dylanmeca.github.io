pkg update && pkg upgrade
pkg install nano
pkg install python2
pkg install util-linux
pkg install figlet
pkg install vim
pkg install wget
echo" Cargando ... "

#funciones
        function apt install kali-linux {
                 echo $(wget https://raw.githubusercontent.com/EXALAB/Anlinux-Resources/master/Scripts/Installer/Kali/kali.sh )
     
     
#menu

setterm -foreground green

figlet mr. linux

echo" Bienvenido a MR. Linux "

PS1="root: "
