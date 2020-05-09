command_not_found_handle() {
        /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
}

setterm -foreground green

echo -e "\e[1;32m"
neofetch
echo ""   
setterm -foreground green
PS1="\u@\H ~# "
