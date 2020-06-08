command_not_found_handle() {
        /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
}

setterm -foreground green

echo -e "\e[1;32m"
neofetch
echo ""   
setterm -foreground green
PS1='\033[1;91mroot@termux[\033[1;93m\W\033[1;91m]:# \033[1;92m'
