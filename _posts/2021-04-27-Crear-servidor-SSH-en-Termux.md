---
layout: post
description: En este articulo veras como se crea un servidor ssh en Termux, el servidor ssh en definición es una conexión remota desde otra pc al servidor.
categories: [Servidores, Termux, Informatica, Tutoriales]
keywords:
  - termux
  - servidor ssh
  - servidor
  - ssh
  - linux
  - como crear un servidor ssh en termux
  - crear servidor ssh en termux
---

Para crear un servidor ssh en Termux debes ejecutar estos comandos:

```shell

pkg update -y && pkg upgrade -y
pkg install openssh -y

```

Una vez que ejecutamos esos comando debemos ejecutar estos comandos para preparar nuestro servidor ssh.

```shell

sshd
passwd user

```

Una vez hecho eso tienes que saber que en el comando ``` passwd ```, en la parte donde esta ``` user ```, debes reemplazarlo por tu usuario.

Una vez hecho todo eso el servidor ssh esta listo pero para iniciarlo debes ejecutar este comando pero antes debes saber que el puerto por defecto del servidor ssh es ```22``` pero en termux es ```8022```, los comandos que debes ejecutar son estos para entrar en el servidor ssh:

```shell

ssh user@localhost -p 8022

```

El localhost puedes reemplazarlo por el nombre de la maquina si es que estas usando ssh para una distribucion linux.

Listo, acabas de crear un servidor ssh en Termux.

FIN
