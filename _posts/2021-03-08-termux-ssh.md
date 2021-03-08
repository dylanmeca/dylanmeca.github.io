---
layout: post
title: Termux SSH
---

Para crear un servidor SSH, en Termux,
ejecuta estos comandos:<br />

```shell

pkg install openssh
pkg install nmap
nmap localhost
sshd
nmap localhost
whoami
passwd $user
ifconfig wlan0
ssh user@localhost -p 8022

```


                                 
