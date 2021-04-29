---
layout: post1
description: Página de lab termux
keywords:
  - lab termux
  - laboratorio
  - termux
  - repositorio apt
  - apt
---

Lab termux es un repositorio apt creado por dylan14567 y ese repositorio te permite descargar paquetes apt.

# Instalación

Para instalarlo necesitas tener instalado termux y una vez que tienes instalado termux colocas estos comandos.

```shell

pkg update -y && pkg upgrade -y
pkg install wget -y
pkg install gnupg -y

```

Una vez instalado esos paquetes ejecuta los siquientes comandos en termux:

```shell

cd $PREFIX/etc/apt/sources.list.d
printf "deb https://dylan14567.github.io termux extras" > lab.list

```

Una vez hecho eso debes descargar la [llave](https://dylan14567.github.io/dists/termux/lab.key) del repositorio apt y para eso debes ejecutar estos comandos:

```shell

cd $HOME
wget https://dylan14567.github.io/dists/termux/lab.key
apt-key add lab.key

```

Una vez hecho esto solo te falta actualizar el sistema para que funcione y para eso debes poner los siquientes comandos.

```shell

pkg update -y && pkg upgrade -y
cd $HOME

```

Listo, se instalo correctamente el repositorio apt.

/FIN/

