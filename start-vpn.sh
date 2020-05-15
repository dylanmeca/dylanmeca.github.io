echo " Configurando Proxys "
proxychains4 pkg update && pkg upgrade
echo " Activando Tor "
echo " Conectando a la red Tor "
tor
