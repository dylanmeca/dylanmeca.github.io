#!bin/bash
echo -e "\e[1;36m"
echo "GENERADOR DE PAYLOAD"
echo ""
echo -ne "\e[1;33mHOST: \e[1;36m"
read host
echo ""
echo "GET http://$host/ HTTP/1.1[crlf]Host: $host[crlf] Access-Control-Allow-Credentials: true, true[lf] Access-Control-Allow-Headers: X-Requested-With,Content-Type, X-Requested-With,Content-Type[lf] Access-Control-Allow-Methods: GET,PUT,OPTIONS,POST,DELETE, GET,PUT,OPTIONS,POST,DELETE[lf] Age: 8, 8[lf] Cache-Control: max-age=86400[lf] public[lf] Connection: keep-alive[lf] Content-Type: text/html; charset=UTF-8[crlf]Content-Length: 9999999999999[crlf]UseDNS: Yes[crlf]Vary: Accept-Encoding[crlf][raw][crlf][crlf][crlf]"
echo ""
echo "CONNECT [host_port][protocol][crlf]Host: $host [crlf][crlf]"
 
